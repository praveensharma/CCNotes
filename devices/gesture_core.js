/* CCNotes: deterministic ES5 engine, shared by Max js and Node tests. */
var Gesture = (function () {
    function clamp(x, lo, hi) { return Math.max(lo, Math.min(hi, x)); }
    var schema = {
        enabled:[0,1,1], pitchChannel:[1,16,1], pitchSource:[0,1,0], cc:[0,127,1], bits:[0,1,0],
        inputMin:[0,16383,0], inputMax:[1,16383,127], low:[0,127,36], high:[0,127,84],
        invert:[0,1,0], transpose:[-127,127,0], hysteresis:[0,0.49,0.12],
        gateChannel:[1,16,1], gateNote:[-1,127,60], articulation:[0,1,0], tracking:[0,1,0],
        velocityMode:[0,1,1], velocity:[1,127,100], lengthMs:[1,60000,150],
        lengthMode:[0,1,0], division:[0,6,3], outputChannel:[1,16,1],
        gateSource:[0,1,0], fallback:[-1,127,-1], maxHoldMs:[0,600000,30000]
    };
    function defaults(i) {
        var c={}, k; for(k in schema) { c[k]=schema[k][2]; }
        c.cc=i+1; c.gateNote=60+i; c.outputChannel=i+1; return c;
    }
    function Engine(count, emit) {
        this.emit=emit; this.voices=[]; this.enabled=true; this.tempo=120;
        for(var i=0;i<count;i++) { this.voices.push({c:defaults(i), raw:null, pitch:null,
            mapped:null, msb:null, lsb:null, held:{}, active:null, deadline:null, started:null, velocity:100}); }
    }
    Engine.prototype.release=function(i) {
        var v=this.voices[i]; if(v.active) { this.emit(i,v.active.channel,v.active.pitch,0); }
        v.active=null; v.deadline=null; v.started=null;
    };
    Engine.prototype.clear=function(i, invalidate) {
        var v=this.voices[i]; this.release(i); v.held={};
        if(invalidate) {v.raw=null;v.pitch=null;v.mapped=null;v.msb=null;v.lsb=null;}
    };
    Engine.prototype.panic=function(invalidate) {
        for(var i=0;i<this.voices.length;i++) {this.clear(i,!!invalidate);}
    };
    Engine.prototype.config=function(i,k,x) {
        var v=this.voices[i], s=schema[k]; if(!v || !s || !isFinite(x)) {return false;}
        x=clamp(Number(x),s[0],s[1]); if(k!=='hysteresis'){x=Math.round(x);}
        if(v.c[k]===x){return true;}
        // Changing any parameter safely ends its articulation. Mapping/source changes
        // additionally require fresh pitch data, avoiding stale-source notes.
        var invalid=/^(pitchSource|pitchChannel|cc|bits|inputMin|inputMax|low|high|invert|transpose)$/.test(k);
        this.clear(i,invalid); v.c[k]=x; return true;
    };
    Engine.prototype.map=function(v,raw) {
        var c=v.c, max=c.bits?16383:127;
        var lo=clamp(c.inputMin,0,max), hi=clamp(c.inputMax,0,max);
        if(hi<=lo){v.pitch=null;v.mapped=null;return;}
        var t=clamp((raw-lo)/(hi-lo),0,1); if(c.invert){t=1-t;}
        var p=clamp(c.low+t*(c.high-c.low)+c.transpose,0,127), old=v.mapped;
        v.pitch=p;
        if(old===null || p>old+0.5+c.hysteresis || p<old-0.5-c.hysteresis) {
            v.mapped=clamp(Math.floor(p+0.5),0,127);
        }
    };
    Engine.prototype.cc=function(channel,cc,value,now,source) {
        source=source||0;
        for(var i=0;i<this.voices.length;i++) {
            var v=this.voices[i], c=v.c, raw=null;
            if(!this.enabled || !c.enabled || channel!==c.pitchChannel || source!==c.pitchSource){continue;}
            if(c.bits) {
                if(c.cc>31){continue;} // Standard 14-bit CC pairs: MSB 0..31, LSB +32.
                if(cc===c.cc){v.msb=value;}else if(cc===c.cc+32){v.lsb=value;}else{continue;}
                if(v.msb===null || v.lsb===null){continue;}
                raw=v.msb*128+v.lsb;
            } else {if(cc!==c.cc){continue;}raw=value;}
            v.raw=raw; this.map(v,raw);
            // A pitch update can replace an existing articulation, never open one.
            if(c.tracking && v.active && v.mapped!==null && v.mapped!==v.active.pitch) {
                var end=v.deadline, start=v.started; this.release(i);
                this.start(i,v.mapped,v.velocity,now);v.deadline=end;v.started=start;
            }
        }
    };
    Engine.prototype.start=function(i,p,velocity,now) {
        var v=this.voices[i]; this.release(i); v.velocity=velocity;
        v.active={channel:v.c.outputChannel,pitch:p};v.started=now;
        this.emit(i,v.active.channel,p,velocity);
    };
    Engine.prototype.note=function(source,channel,note,velocity,now) {
        for(var i=0;i<this.voices.length;i++) {
            var v=this.voices[i], c=v.c, key=channel+':'+note;
            if(!this.enabled || !c.enabled || source!==c.gateSource || channel!==c.gateChannel ||
                (c.gateNote>=0 && note!==c.gateNote)){continue;}
            if(velocity===0) {
                if(c.articulation){continue;}
                if(v.held[key]){v.held[key]--;if(!v.held[key]){delete v.held[key];}}
                var any=false;for(var k in v.held){any=true;break;}
                if(!any){this.release(i);}continue;
            }
            if(!c.articulation){v.held[key]=(v.held[key]||0)+1;}
            var p=v.mapped!==null?v.mapped:(c.fallback>=0?c.fallback:null);
            if(p===null){continue;}
            this.start(i,p,c.velocityMode?velocity:c.velocity,now);
            if(c.articulation) {
                var beats=[4,2,1,0.5,0.25,0.125,0.0625];
                v.deadline=now+(c.lengthMode?60000/this.tempo*beats[c.division]:c.lengthMs);
            }
        }
    };
    Engine.prototype.tick=function(now) {
        for(var i=0;i<this.voices.length;i++) {
            var v=this.voices[i];
            if(v.active && ((v.deadline!==null && now>=v.deadline) ||
                (v.c.maxHoldMs>0 && now-v.started>=v.c.maxHoldMs))) {this.clear(i,false);}
        }
    };
    function Parser(callback) {this.cb=callback;this.reset();}
    Parser.prototype.reset=function(){this.status=0;this.data=[];this.sysex=false;};
    Parser.prototype.byte=function(b) {
        b=Number(b);if(b<0 || b>255 || b%1){return;}
        if(b>=248){if(b===255){this.reset();this.cb('reset');}return;}
        if(b===240){this.reset();this.sysex=true;return;}
        if(b===247){this.reset();return;}
        if(b&128){this.data=[];this.status=b<240?b:0;return;}
        if(this.sysex || !this.status){return;}
        this.data.push(b);var type=this.status>>4, need=(type===12 || type===13)?1:2;
        if(this.data.length<need){return;}
        var ch=(this.status&15)+1,a=this.data[0],v=this.data[1];this.data=[];
        if(type===11){this.cb('cc',ch,a,v);}else if(type===9 || type===8){this.cb('note',ch,a,type===8?0:v);}
    };
    return {Engine:Engine,Parser:Parser,schema:schema,defaults:defaults};
}());
if(typeof module!=='undefined'){module.exports=Gesture;}
