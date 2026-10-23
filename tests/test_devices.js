const assert=require('node:assert/strict'), fs=require('node:fs'), vm=require('node:vm'), path=require('node:path');
function studio(){
 let time=1000;const devices=[],globals={};
 function create(mode='main',count=4,values={}){
  const midi=[],display={};let context;
  const env={jsarguments:['gesture_device.js',mode,count],Math,Date:class extends Date{constructor(){super(time);}},
   Global:function(name){return globals[name]||(globals[name]={});},
   Task:function(fn){this.repeat=()=>{};this.cancel=()=>{};},
   patcher:{getnamed(name){return name in values?{getvalueof(){return values[name];},message(...args){display[name]=args;}}:
    {getvalueof(){return NaN;},message(...args){display[name]=args;}};}},
   outlet(i,b){midi.push(b);},
   include(name){vm.runInContext(fs.readFileSync(path.join(__dirname,'../src',name),'utf8'),context);},
   messnamed(bus,selector,...args){
    for(const d of devices){if(bus==='continuous_cc_notes_gate_v1' && d.mode==='main' ||
      bus==='continuous_cc_notes_out_v1' && d.mode==='out'){d.c[selector](...args);}}
   }};
  context=vm.createContext(env);vm.runInContext(fs.readFileSync(path.join(__dirname,'../src/gesture_device.js'),'utf8'),context);
  const device={c:context,mode,midi,values,display,send(bytes){bytes.forEach(b=>context.msg_int(b));}};
  devices.push(device);context.init();return device;
 }
 return {create,tick(ms){time+=ms;devices.forEach(d=>d.c.tick());},advance(ms){time+=ms;}};
}
let checks=0;
function test(name,fn){fn();checks++;console.log('PASS '+name);}
test('Four gate senders, one engine, four voice outputs with no local duplication',()=>{
 const s=studio(),main=s.create('main',4,{localOutput:0,...Object.fromEntries([1,2,3,4].flatMap(i=>
  [[`v${i}_gateSource`,1],[`v${i}_gateChannel`,i]]))});
 const senders=[1,2,3,4].map(i=>s.create('gate',1,{logical:i})),outs=[1,2,3,4].map(i=>s.create('out',1,{slot:i}));
 for(let i=0;i<4;i++){main.send([176,i+1,127]);senders[i].send([144,60+i,90]);}
 assert.equal(main.midi.length,0);outs.forEach((d,i)=>assert.deepEqual(d.midi,[144+i,84,90]));
 senders.forEach((d,i)=>d.send([128,60+i,0]));outs.forEach((d,i)=>assert.deepEqual(d.midi.slice(3),[128+i,84,0]));
});
test('Stop, disable, panic and source change release the original note',()=>{
 const s=studio(),m=s.create('main',1);m.send([176,1,0,144,60,100]);m.c.playing(1);m.c.playing(0);
 assert.deepEqual(m.midi,[144,36,100,128,36,0]);
 m.send([144,60,100]);assert.equal(m.midi.length,6); // reset invalidated pitch
 m.send([176,1,127,144,60,100]);m.c.active(0);assert.deepEqual(m.midi.slice(-3),[128,84,0]);
 m.c.active(1);m.send([176,1,0,144,60,100]);m.c.setting(1,'outputChannel',4);
 assert.deepEqual(m.midi.slice(-3),[128,36,0]);
});
test('Gate sender disable / delete cleans up; logical channel change releases old gate',()=>{
 const s=studio(),m=s.create('main',1,{v1_gateSource:1}),g=s.create('gate',1);
 m.send([176,1,0]);g.send([144,60,100]);g.c.channelid(2);assert.equal(m.midi.at(-1),0);
 g.c.channelid(1);g.send([144,60,100]);g.c.active(0);assert.equal(m.midi.at(-1),0);
 g.c.active(1);g.send([144,60,100]);g.c.notifydeleted();assert.equal(m.midi.at(-1),0);
});
test('Gate sender heartbeat loss releases gate without guessing pitch',()=>{
 const s=studio(),m=s.create('main',1,{v1_gateSource:1}),g=s.create('gate',1);
 m.send([176,1,0]);g.send([144,60,100]);s.advance(1600);m.c.tick();assert.deepEqual(m.midi.slice(-3),[128,36,0]);
});
test('Output receiver heartbeat loss, retarget and disable release saved notes',()=>{
 const s=studio(),m=s.create('main',1,{localOutput:0}),o=s.create('out',1);
 m.send([176,1,127,144,60,100]);s.advance(1600);o.c.tick();assert.deepEqual(o.midi,[144,84,100,128,84,0]);
 m.c.panic();m.send([176,1,0,144,60,100]);o.c.slotid(2);assert.deepEqual(o.midi.slice(-3),[128,36,0]);
});
test('Duplicate engine Group fails silent; moving second to another Group restores routing',()=>{
 const s=studio(),a=s.create('main',1),b=s.create('main',1);
 a.send([176,1,0,144,60,100]);b.send([176,1,0,144,60,100]);assert.equal(a.midi.length+b.midi.length,0);
 b.c.groupid(2);a.send([176,1,127,144,60,100]);assert.deepEqual(a.midi,[144,84,100]);
});
test('Groups isolate companion messages; configuration restores from saved controls',()=>{
 const s=studio(),m=s.create('main',1,{group:2,v1_gateSource:1,v1_cc:9,v1_low:48,v1_high:72}),
  g=s.create('gate',1,{group:1}),o=s.create('out',1,{group:2});
 m.send([176,9,127]);g.send([144,60,100]);assert.equal(m.midi.length,0);
 g.c.groupid(2);g.send([144,60,100]);assert.deepEqual(o.midi,[144,72,100]);
});
test('Pitch sender reconstructs logical channels and loss invalidates stale pitch',()=>{
 const s=studio(),m=s.create('main',1,{v1_pitchSource:1,v1_pitchChannel:4}),p=s.create('pitch',1,{logical:4});
 m.send([176,1,127,144,60,100]);assert.equal(m.midi.length,0);
 p.send([176,1,0]);m.send([144,60,100]);assert.deepEqual(m.midi,[144,36,100]);
 p.c.active(0);assert.deepEqual(m.midi.slice(-3),[128,36,0]);
 m.send([144,60,100]);assert.equal(m.midi.length,6);
 p.c.active(1);p.send([176,1,127]);m.send([144,60,100]);
 s.advance(1600);m.c.tick();assert.deepEqual(m.midi.slice(-3),[128,84,0]);
});
console.log(`${checks} Max-adapter simulation tests passed (not a Live runtime test)`);
