const assert=require('node:assert/strict');
const G=require('../src/gesture_core');
let checks=0;
function test(name,fn){fn();checks++;console.log('PASS '+name);}
function setup(count=1){const events=[];const e=new G.Engine(count,(i,ch,p,v)=>events.push([i,ch,p,v]));return {e,events};}
function pitches(events){return events.map(x=>[x[2],x[3]]);}
test('Phase 1: independent pitch updates, sample/hold, next gate and correct off',()=>{
 const {e,events}=setup();e.cc(1,1,0,0);e.cc(1,1,64,1);assert.equal(events.length,0);
 e.note(0,1,60,100,2);e.cc(1,1,127,3);assert.deepEqual(pitches(events),[[60,100]]);
 e.note(0,1,60,0,4);e.note(0,1,60,90,5);e.note(0,1,60,0,6);
 assert.deepEqual(pitches(events),[[60,100],[60,0],[84,90],[84,0]]);
});
test('No initial CC means no notes, including pitch arrival during held gate',()=>{
 const {e,events}=setup();e.note(0,1,60,100,0);e.cc(1,1,127,1);assert.equal(events.length,0);
 e.note(0,1,60,0,2);e.note(0,1,60,100,3);assert.equal(events[0][2],84);
});
test('Repeated identical notes retrigger, balanced overlapping offs cannot cut new note',()=>{
 const {e,events}=setup();e.cc(1,1,0,0);
 e.note(0,1,60,100,1);e.note(0,1,60,90,2);e.note(0,1,60,0,3);
 assert.deepEqual(pitches(events),[[36,100],[36,0],[36,90]]);
 e.note(0,1,60,0,4);assert.deepEqual(events.at(-1),[0,1,36,0]);
});
test('Unfiltered overlap uses last-note retrigger and remains held until all gates release',()=>{
 const {e,events}=setup();e.config(0,'gateNote',-1);e.cc(1,1,0,0);
 e.note(0,1,60,100,1);e.cc(1,1,127,2);e.note(0,1,62,100,3);
 e.note(0,1,60,0,4);assert.equal(e.voices[0].active.pitch,84);
 e.note(0,1,62,0,5);assert.equal(e.voices[0].active,null);
});
test('Four simultaneous voices stay independent',()=>{
 const {e,events}=setup(4);
 for(let i=0;i<4;i++){e.cc(1,i+1,i*40,0);e.note(0,1,60+i,100+i,1);}
 assert.equal(events.length,4);assert.deepEqual(events.map(x=>x[1]),[1,2,3,4]);
 e.note(0,1,61,0,2);assert.equal(e.voices[1].active,null);assert(e.voices[0].active);
 e.panic();assert.equal(events.filter(x=>x[3]===0).length,4);
});
test('Trigger ignores input off, retrigger cancels old deadline, exact duration',()=>{
 const {e,events}=setup();e.config(0,'articulation',1);e.cc(1,1,0,0);
 e.note(0,1,60,100,10);e.note(0,1,60,0,11);e.note(0,1,60,90,100);
 e.tick(160);assert(e.voices[0].active);e.tick(249);assert(e.voices[0].active);
 e.tick(250);assert.equal(e.voices[0].active,null);assert.equal(events.length,4);
});
test('Tempo sync samples tempo at onset',()=>{
 const {e}=setup();e.config(0,'articulation',1);e.config(0,'lengthMode',1);e.tempo=120;
 e.cc(1,1,0,0);e.note(0,1,60,100,0);assert.equal(e.voices[0].deadline,250);
 e.tempo=60;e.tick(250);assert.equal(e.voices[0].active,null);
});
test('Continuous tracking replaces only changed pitches and preserves trigger deadline',()=>{
 const {e,events}=setup();e.config(0,'tracking',1);e.config(0,'articulation',1);e.cc(1,1,0,0);
 e.note(0,1,60,100,0);e.cc(1,1,0,10);assert.equal(events.length,1);
 e.cc(1,1,127,20);assert.deepEqual(pitches(events),[[36,100],[36,0],[84,100]]);
 assert.equal(e.voices[0].deadline,150);e.tick(150);assert.equal(e.voices[0].active,null);
});
test('Hysteresis rejects semitone-boundary jitter',()=>{
 const {e}=setup();e.config(0,'low',60);e.config(0,'high',61);e.config(0,'hysteresis',.12);
 e.cc(1,1,0,0);for(const v of [63,64,65,70,63]){e.cc(1,1,v,0);assert.equal(e.voices[0].mapped,60);}
 e.cc(1,1,90,0);assert.equal(e.voices[0].mapped,61);e.cc(1,1,60,0);assert.equal(e.voices[0].mapped,61);
 e.cc(1,1,40,0);assert.equal(e.voices[0].mapped,60);
});
test('Calibration, inversion, transpose, clamp and invalid interval',()=>{
 const {e}=setup();e.config(0,'inputMin',20);e.config(0,'inputMax',100);e.config(0,'invert',1);
 e.config(0,'transpose',12);e.cc(1,1,0,0);assert.equal(e.voices[0].mapped,96);
 e.cc(1,1,127,0);assert.equal(e.voices[0].mapped,48);
 e.config(0,'inputMin',110);e.cc(1,1,50,0);assert.equal(e.voices[0].pitch,null);
});
test('14-bit pair waits for both bytes; LSB-first, subsequent independent updates',()=>{
 const {e,events}=setup();e.config(0,'bits',1);e.config(0,'inputMax',16383);
 e.cc(1,33,127,0);assert.equal(e.voices[0].raw,null);e.cc(1,1,127,0);
 assert.equal(e.voices[0].raw,16383);assert.equal(e.voices[0].mapped,84);assert.equal(events.length,0);
 e.cc(1,33,0,0);assert.equal(e.voices[0].raw,16256);
});
test('Source change releases saved pitch/channel and waits for new CC',()=>{
 const {e,events}=setup();e.cc(1,1,0,0);e.note(0,1,60,100,1);e.config(0,'cc',4);
 assert.deepEqual(events.at(-1),[0,1,36,0]);assert.equal(e.voices[0].mapped,null);
 e.note(0,1,60,100,2);assert.equal(events.length,2);
});
test('Mute, panic, fallback, fixed velocity and disconnect safety',()=>{
 const {e,events}=setup();e.config(0,'fallback',72);e.config(0,'velocityMode',0);e.config(0,'velocity',80);
 e.note(0,1,60,1,0);assert.deepEqual(events[0],[0,1,72,80]);e.tick(30000);assert.equal(e.voices[0].active,null);
 e.note(0,1,60,1,31000);e.config(0,'enabled',0);assert.equal(events.at(-1)[3],0);
 e.panic(true);assert.equal(e.voices[0].raw,null);
});
test('Local and sender gate channels/filters are independent',()=>{
 const {e,events}=setup();e.config(0,'gateSource',1);e.config(0,'gateChannel',4);e.cc(1,1,0,0);
 e.note(0,4,60,100,0);e.note(1,3,60,100,0);e.note(1,4,61,100,0);assert.equal(events.length,0);
 e.note(1,4,60,100,0);assert.equal(events.length,1);
});
test('MIDI parser: running status, note-on zero, realtime, SysEx, system common reset',()=>{
 const events=[],p=new G.Parser((...e)=>events.push(e));
 [0xb0,1,64,248,1,127,0x90,60,100,60,0,0x80,61,99,240,1,2,247,3,4,0x90,62,90,241,0,63,90].forEach(b=>p.byte(b));
 assert.deepEqual(events,[['cc',1,1,64],['cc',1,1,127],['note',1,60,100],['note',1,60,0],['note',1,61,0],['note',1,62,90]]);
});
test('Deterministic stress: every output note-on has one matching off after reset',()=>{
 const {e,events}=setup(4);let seed=1729;
 function random(n){seed=(Math.imul(seed,1664525)+1013904223)>>>0;return seed%n;}
 for(let t=0;t<12000;t++){
  const i=random(4),action=random(5);
  if(action===0)e.cc(1,i+1,random(128),t);
  if(action===1)e.note(0,1,60+i,1+random(127),t);
  if(action===2)e.note(0,1,60+i,0,t);
  if(action===3)e.config(i,'tracking',random(2));
  e.tick(t);
 }
 e.panic(true);const active=new Map();
 for(const [i,ch,p,v] of events){const k=[i,ch,p].join(':');if(v){assert(!active.has(k));active.set(k,v);}else{assert(active.has(k));active.delete(k);}}
 assert.equal(active.size,0);
});
console.log(`${checks} core tests passed`);
