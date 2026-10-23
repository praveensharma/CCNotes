autowatch = 0;
inlets = 1;
outlets = 1;
include('gesture_core.js');
var mode=String(jsarguments[1]||'main'), count=Number(jsarguments[2]||4);
var group=1, slot=1, logical=1, enabled=true, ready=false, timer=null, lastPlaying=-1;
var localOutput=1, pageIndex=0, identity='g'+new Date().getTime()+'_'+Math.floor(Math.random()*1e9);
var gates={}, sources={}, receiverNotes={}, receiverSource='', receiverLast=0;
var registry=new Global('continuous_cc_notes_registry_v1');
if(!registry.entries){registry.entries={};}
var core=new Gesture.Engine(count,emit);
var parser=new Gesture.Parser(input);
function now(){return new Date().getTime();}
function ui(name){try{return this.patcher.getnamed(name);}catch(e){return null;}}
function value(name,fallback){var o=ui(name);if(!o){return fallback;}var x=o.getvalueof();if(x instanceof Array){x=x[0];}return isFinite(Number(x))?Number(x):fallback;}
function bytes(channel,pitch,velocity){outlet(0,(velocity?144:128)+channel-1);outlet(0,pitch);outlet(0,velocity);}
function emit(i,ch,p,v){
    if(localOutput){bytes(ch,p,v);}
    messnamed('continuous_cc_notes_out_v1','event',group,identity,i+1,ch,p,v);
}
function status(text){var o=ui('status');if(o){o.message('set',text);}}
function conflict(){
    if(mode!=='main'){return false;}
    var entries=registry.entries, n=0,t=now();
    for(var id in entries){if(entries[id].group===group && t-entries[id].time<1500){n++;}}
    return n>1;
}
function register(){var entries=registry.entries;entries[identity]={group:group,time:now()};registry.entries=entries;}
function input(type,ch,a,b){
    if(!ready || !enabled){return;}
    if(type==='reset'){panic();return;}
    if(mode==='out'){return;}
    if(mode==='pitch'){
        if(type==='cc'){messnamed('continuous_cc_notes_gate_v1','pitchcc',group,identity,logical,a,b);}
        return;
    }
    if(mode==='gate'){
        if(type==='note'){messnamed('continuous_cc_notes_gate_v1','gate',group,identity,logical,a,b);}
        else if(type==='cc' && (a===120 || a===123)){senderReset();}
        return;
    }
    if(conflict()){core.panic(true);status('Duplicate engine Group: choose a unique Group');return;}
    if(type==='cc'){
        if(a===120 || a===123){core.panic(false);}else{core.cc(ch,a,b,now());}
    } else if(type==='note'){core.note(0,ch,a,b,now());}
}
function msg_int(b){parser.byte(b);}
function setting(i,key,x){if(ready && mode==='main'){core.config(i-1,String(key),Number(x));}}
function receiverPanic(){
    for(var key in receiverNotes){var n=receiverNotes[key];bytes(n.ch,n.pitch,0);}
    receiverNotes={};receiverSource='';receiverLast=0;
}
function senderReset(){messnamed('continuous_cc_notes_gate_v1',mode==='pitch'?'resetpitch':'resetgate',group,identity,logical);}
function panic(){
    if(mode==='main'){core.panic(true);}
    else if(mode==='gate' || mode==='pitch'){senderReset();}else{receiverPanic();}
    parser.reset();
}
function active(x){enabled=!!x;core.enabled=enabled;if(!enabled){panic();}}
function playing(x){x=Number(x);if(lastPlaying===1 && x===0){panic();}lastPlaying=x;}
function tempo(x){if(isFinite(x)&&x>0){core.tempo=Number(x);}}
function groupid(x){x=Math.max(1,Math.min(64,Math.round(x)));if(group!==x){panic();group=x;gates={};sources={};if(mode==='main'){register();}}}
function slotid(x){if(slot!==x){receiverPanic();slot=x;}}
function channelid(x){if(logical!==x){senderReset();logical=x;}}
function outputmode(x){x=Number(x);if(localOutput!==x){panic();localOutput=x;}}
function page(x){
    pageIndex=Number(x);
    var names=['pitch','articulation','calibration'];
    for(var p=0;p<names.length;p++){
        for(var i=1;i<=count;i++){
            var fields=pageFields[names[p]];
            for(var j=0;j<fields.length;j++){
                var object=ui('v'+i+'_'+fields[j]),label=ui('label_'+names[p]+'_'+j);
                if(object){object.message('hidden',p!==pageIndex?1:0);}
                if(label){label.message('hidden',p!==pageIndex?1:0);}
            }
        }
    }
}
var pageFields={pitch:['enabled','cc','pitchChannel','low','high','transpose','gateChannel','gateNote','gateSource','outputChannel'],
    articulation:['articulation','tracking','velocityMode','velocity','lengthMs','lengthMode','division','hysteresis','maxHoldMs'],
    calibration:['bits','inputMin','inputMax','invert','fallback','pitchSource']};
function gate(g,id,ch,n,v){
    if(mode!=='main' || !ready || !enabled || g!==group || conflict()){return;}
    gates[id]={time:now(),channel:ch,type:'gate'};core.note(1,ch,n,v,now());
}
function gatebeat(g,id,ch){if(mode==='main' && g===group){gates[id]={time:now(),channel:ch,type:'gate'};}}
function clearGate(ch){for(var i=0;i<count;i++){if(core.voices[i].c.gateSource===1 && core.voices[i].c.gateChannel===ch){core.clear(i,false);}}}
function resetgate(g,id,ch){if(mode==='main' && g===group){clearGate(ch);delete gates[id];}}
function clearPitch(ch){for(var i=0;i<count;i++){if(core.voices[i].c.pitchSource===1 && core.voices[i].c.pitchChannel===ch){core.clear(i,true);}}}
function resetpitch(g,id,ch){if(mode==='main' && g===group){clearPitch(ch);delete gates[id];}}
function pitchbeat(g,id,ch){if(mode==='main' && g===group){gates[id]={time:now(),channel:ch,type:'pitch'};}}
function pitchcc(g,id,ch,cc,v){
    if(mode!=='main' || !ready || !enabled || g!==group || conflict()){return;}
    pitchbeat(g,id,ch);if(cc===120 || cc===123){clearPitch(ch);}else{core.cc(ch,cc,v,now(),1);}
}
function event(g,id,s,ch,p,v){
    if(mode!=='out' || !ready || !enabled || g!==group || s!==slot){return;}
    if(receiverSource && receiverSource!==id){receiverPanic();status('Multiple engine sources: check Group');return;}
    receiverSource=id;receiverLast=now();var key=ch+':'+p;
    if(v){receiverNotes[key]={ch:ch,pitch:p};bytes(ch,p,v);}else if(receiverNotes[key]){bytes(ch,p,0);delete receiverNotes[key];}
}
function outbeat(g,id){if(mode==='out' && g===group && receiverSource===id){receiverLast=now();}}
var lastBeat=0,lastUI=0;
function tick(){
    if(!ready){return;}var t=now();
    if(mode==='main'){
        core.tick(t);
        for(var id in gates){if(t-gates[id].time>1500){
            if(gates[id].type==='pitch'){clearPitch(gates[id].channel);}else{clearGate(gates[id].channel);}delete gates[id];}}
        if(t-lastBeat>=250){register();if(conflict()){core.panic(true);status('Duplicate engine Group: choose a unique Group');}
            else{status(enabled?'Ready | CC updates pitch; gates play notes':'Device disabled');}
            messnamed('continuous_cc_notes_out_v1','outbeat',group,identity);lastBeat=t;}
        if(t-lastUI>=50){for(var i=0;i<count;i++){
            var v=core.voices[i], held=false;for(var key in v.held){held=true;break;}
            var o=ui('diagnostic'+(i+1));if(o){o.message('set',(v.raw===null?'CC --':'CC '+v.raw)+' | p '+(v.pitch===null?'--':v.pitch.toFixed(2))+
                ' | gate '+(held||v.deadline!==null?1:0)+' | note '+(v.active?v.active.pitch:'--'));}
        }lastUI=t;}
    } else if(mode==='gate' || mode==='pitch'){
        if(enabled && t-lastBeat>=250){messnamed('continuous_cc_notes_gate_v1',mode==='pitch'?'pitchbeat':'gatebeat',group,identity,logical);lastBeat=t;}
    } else if(receiverSource && t-receiverLast>1500){receiverPanic();status('Engine unavailable: released notes');}
}
function init(){
    panic();ready=false;
    group=value('group',1);slot=value('slot',1);logical=value('logical',1);localOutput=value('localOutput',1);
    if(mode==='main'){
        for(var i=0;i<count;i++){var c=Gesture.defaults(i);for(var k in Gesture.schema){core.config(i,k,value('v'+(i+1)+'_'+k,c[k]));}}
        register();page(value('page',0));
    }
    ready=true;if(timer){timer.cancel();}timer=new Task(tick,this);timer.interval=5;timer.repeat();
    status(mode==='gate'?'Gate sender | input notes consumed':mode==='pitch'?'Pitch sender | input CC consumed':mode==='out'?'Voice output | waiting for engine':'Waiting for pitch CC');
}
function notifydeleted(){panic();if(timer){timer.cancel();}var entries=registry.entries;delete entries[identity];registry.entries=entries;}
