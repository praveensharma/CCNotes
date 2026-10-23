#!/usr/bin/env python3
"""Build MIDI-effect AMXD containers and editable patchers without modifying Live."""
import argparse
import json
import os
import tempfile
from datetime import datetime
import shutil
import struct
from pathlib import Path
from zipfile import ZipFile, ZIP_DEFLATED

ROOT = Path(__file__).resolve().parents[1]
LIBRARY = Path.home() / 'Music/Ableton/User Library'
INSTALL_DIRS = (
    LIBRARY / 'Presets/MIDI Effects/Max MIDI Effect/CCNotes',
    LIBRARY / 'Max4Live/CCNotes',
)


def release_assets():
    assets = {p.name: p.read_bytes() for p in (ROOT/'dist').iterdir()
              if p.suffix in ('.amxd', '.js')}
    expected = {'CCNotes 1 Voice.amxd', 'CCNotes 4 Voices.amxd',
                'CCNotes Gate Send.amxd', 'CCNotes Pitch Send.amxd',
                'CCNotes Voice Out.amxd', 'gesture_core.js', 'gesture_device.js'}
    if set(assets) != expected:
        raise ValueError('Incomplete or unexpected release assets; rebuild before installing')
    for name, data in assets.items():
        if name.endswith('.amxd'):
            if (data[:16] != bytes.fromhex('616d7066040000006d6d6d6d')+b'ptch'
                    or struct.unpack('<I', data[16:20])[0] != len(data)-20):
                raise ValueError('Invalid MIDI-effect AMXD: '+name)
            json.loads(data[20:].rstrip(b'\0'))
    return assets


def atomic_write(path, data):
    descriptor, temporary = tempfile.mkstemp(prefix='.'+path.name, dir=path.parent)
    try:
        with os.fdopen(descriptor, 'wb') as stream:
            stream.write(data)
        os.replace(temporary, path)
    finally:
        if os.path.exists(temporary):
            os.unlink(temporary)


def verify_installed(targets=None):
    assets = release_assets()
    for directory in INSTALL_DIRS if targets is None else targets:
        for name, data in assets.items():
            target = directory/name
            if not target.is_file() or target.read_bytes() != data:
                raise ValueError('Missing or stale installed asset: '+str(target))


def install(targets=None):
    assets = release_assets()
    targets = INSTALL_DIRS if targets is None else targets
    stamp = datetime.now().strftime('%Y%m%d-%H%M%S-%f')
    for directory in targets:
        directory.mkdir(parents=True, exist_ok=True)
        for name, data in assets.items():
            target = directory/name
            if target.exists():
                if target.read_bytes() == data:
                    continue
                backup = directory/'.backups'/stamp
                backup.mkdir(parents=True, exist_ok=True)
                shutil.copy2(target, backup/name)
            atomic_write(target, data)
    verify_installed(targets)
    for directory in targets:
        print('Installed and verified: '+str(directory))

SCHEMA = {
 'enabled':(0,1,1,'On',['Mute','On']), 'cc':(0,127,1,'Pitch CC',None),
 'pitchChannel':(1,16,1,'Pitch Ch',None), 'pitchSource':(0,1,0,'Pitch source',['Local','Sender']), 'low':(0,127,36,'Low note',None),
 'high':(0,127,84,'High note',None), 'transpose':(-127,127,0,'Transpose',None),
 'gateChannel':(1,16,1,'Gate Ch',None), 'gateNote':(-1,127,60,'Gate note',None),
 'gateSource':(0,1,0,'Gate source',['Local','Sender']), 'outputChannel':(1,16,1,'Output Ch',None),
 'articulation':(0,1,0,'Articulation',['Gate','Trigger']),
 'tracking':(0,1,0,'Tracking',['S&H','Continuous']),
 'velocityMode':(0,1,1,'Velocity',['Fixed','Incoming']), 'velocity':(1,127,100,'Fixed vel',None),
 'lengthMs':(1,60000,150,'Length ms',None), 'lengthMode':(0,1,0,'Length unit',['ms','Sync']),
 'division':(0,6,3,'Division',['1/1','1/2','1/4','1/8','1/16','1/32','1/64']),
 'hysteresis':(0,.49,.12,'Hysteresis',None), 'maxHoldMs':(0,600000,30000,'Safety ms',None),
 'bits':(0,1,0,'Resolution',['7 bit','14 bit']), 'inputMin':(0,16383,0,'Input min',None),
 'inputMax':(1,16383,127,'Input max',None), 'invert':(0,1,0,'Direction',['Normal','Invert']),
 'fallback':(-1,127,-1,'Fallback',None)
}
PAGES=[['enabled','cc','pitchChannel','low','high','transpose','gateChannel','gateNote','gateSource','outputChannel'],
 ['articulation','tracking','velocityMode','velocity','lengthMs','lengthMode','division','hysteresis','maxHoldMs'],
 ['bits','inputMin','inputMax','invert','fallback','pitchSource']]
PAGE_NAMES=['pitch','articulation','calibration']

def patch(mode='main', count=4):
    boxes,lines,parameters=[],[],{}
    def add(id,cls,text=None,rect=None,visible=False,**kw):
        b=dict(id=id,maxclass=cls,numinlets=1,numoutlets=1,
               patching_rect=[20,300+len(boxes)*26,220,22])
        if text is not None:b['text']=text
        if visible:b.update(presentation=1,presentation_rect=rect)
        b.update(kw);boxes.append({'box':b});return id
    def link(a,b,out=0,inn=0):lines.append({'patchline':{'source':[a,out],'destination':[b,inn]}})
    def label(id,text,rect,size=10,**kw):
        return add(id,'comment',text,rect,True,numoutlets=0,fontsize=size,textcolor=[.88,.90,.92,1],**kw)
    def control(id,title,rect,lo,hi,default,command,options=None,hidden=0):
        attrs={'parameter_longname':title,'parameter_shortname':title[:20],
               'parameter_type':2 if options else (0 if lo%1 or hi%1 else 1),
               'parameter_mmin':lo,'parameter_mmax':hi,'parameter_initial_enable':1,'parameter_initial':[default]}
        if options:attrs['parameter_enum']=options
        cls='live.menu' if options else 'live.numbox'
        kw=dict(varname=id,parameter_enable=1,saved_attribute_attributes={'valueof':attrs},
                numoutlets=3 if options else 2,hidden=hidden,
                outlettype=['','',''] if options else ['',''],hint=title)
        if options:kw['items']=options
        add(id,cls,rect=rect,visible=True,**kw);parameters[id]=[title,title[:20],0]
        add(id+'_send','newobj','prepend '+command);link(id,id+'_send');link(id+'_send','engine')
    add('engine','newobj',f'js gesture_device.js {mode} {count}',numoutlets=1)
    add('midi','newobj','midiin');link('midi','engine')
    if mode not in ('gate','pitch'):add('output','newobj','midiout',numoutlets=0);link('engine','output')
    add('bus','newobj','r continuous_cc_notes_gate_v1' if mode=='main' else 'r continuous_cc_notes_out_v1');link('bus','engine')
    label('title',{'main':f'CCNOTES · {count} VOICE'+('S' if count>1 else ''),'gate':'CCNOTES · GATE SEND','pitch':'CCNOTES · PITCH SEND','out':'CCNOTES · VOICE OUT'}[mode],[10,6,290,24],16)
    label('group_label','Group',[305,10,40,16]);control('group','Group',[348,7,50,20],1,64,1,'groupid')
    add('panic','textbutton',rect=[410,7,70,22],visible=True,text='PANIC',numoutlets=3,mode=0)
    add('panicbang','newobj','t b');add('panicmessage','message','panic');link('panic','panicbang');link('panicbang','panicmessage');link('panicmessage','engine')
    add('status','message','Initializing',[10,146,1150 if mode=='main' else 600,19],True,varname='status',ignoreclick=1)
    if mode=='main':
        control('page','Controls',[495,7,140,22],0,2,0,'page',['Pitch / Routing','Articulation','Calibration'])
        control('localOutput','Local output',[655,7,125,22],0,1,1,'outputmode',['Receivers only','Local + receivers'])
        for p,fields in enumerate(PAGES):
            for j,k in enumerate(fields):
                x=40+j*84
                label('label_'+PAGE_NAMES[p]+'_'+str(j),SCHEMA[k][3],[x,35,82,16],hidden=int(p!=0))
        label('diag_header','CC input | continuous pitch | gate | sounding note',[886,35,300,16])
        for i in range(count):
            y=55+i*22
            label('voice'+str(i+1),str(i+1),[13,y,24,18],12)
            for p,fields in enumerate(PAGES):
                for j,k in enumerate(fields):
                    lo,hi,default,title,options=SCHEMA[k]
                    if k in ('cc','outputChannel'):default=i+1
                    if k=='gateNote':default=60+i
                    control(f'v{i+1}_{k}',f'V{i+1} {title}',[40+j*84,y,80,19],lo,hi,default,
                            f'setting {i+1} {k}',options,hidden=int(p!=0))
            add('diagnostic'+str(i+1),'message','CC -- | p -- | gate 0 | note --',[886,y,300,19],True,
                varname='diagnostic'+str(i+1),ignoreclick=1,fontsize=10)
    else:
        if mode in ('gate','pitch'):
            kind='gate' if mode=='gate' else 'pitch'
            label('logical_label',f'Logical {kind} channel',[10,46,150,20])
            control('logical',f'Logical {kind} channel',[165,46,60,22],1,16,1,'channelid')
            label('help','Receive one explicit port/channel on this track. Input is consumed.',[10,80,600,20])
            label('help2',f'Main: {kind.title()} source = Sender; {kind.title()} Ch = this logical channel. Match Group.',[10,107,600,20])
        else:
            label('slot_label','Voice',[10,46,80,20]);control('slot','Voice',[90,46,60,22],1,4,1,'slotid')
            label('help','Monitor In · MIDI From: No Input · MIDI To: instrument or hardware port/channel',[10,80,610,20])
            label('help2','Main: choose Receivers only to avoid duplicate local notes. Match Group.',[10,107,610,20])
    add('load','newobj','live.thisdevice',numoutlets=3,outlettype=['bang','int','int'])
    add('init','message','init');link('load','init');link('init','engine')
    add('active','newobj','prepend active');link('load','active',out=1);link('active','engine')
    add('path','newobj','live.path live_set',numoutlets=3);link('load','path')
    for prop in ['is_playing','tempo']:
        add(prop,'newobj','live.observer '+prop,numinlets=2,numoutlets=2)
        link('path',prop,out=1,inn=1)
        add(prop+'_send','newobj','prepend '+('playing' if prop=='is_playing' else 'tempo'))
        link(prop,prop+'_send');link(prop+'_send','engine')
    return {'patcher':dict(fileversion=1,appversion=dict(major=9,minor=0,revision=10,architecture='x64',modernui=1),
        classnamespace='box',rect=[100,100,1200 if mode=='main' else 640,169],
        devicewidth=1200 if mode=='main' else 640,openinpresentation=1,bgcolor=[.12,.13,.15,1],
        boxes=boxes,lines=lines,parameters=parameters,
        dependency_cache=[dict(name=n,bootpath='.',patcherrelativepath='.',type='TEXT',implicit=1)
                          for n in ['gesture_core.js','gesture_device.js']],autosave=0)}

def build():
    for name,mode,count in [('CCNotes 1 Voice','main',1),('CCNotes 4 Voices','main',4),
                             ('CCNotes Gate Send','gate',1),('CCNotes Pitch Send','pitch',1),('CCNotes Voice Out','out',1)]:
        document=patch(mode,count);raw=(json.dumps(document,indent=2)+'\n').encode()
        (ROOT/'devices'/f'{name}.maxpat').write_bytes(raw)
        payload=bytes.fromhex('616d7066040000006d6d6d6d')+b'ptch'+struct.pack('<I',len(raw)+1)+raw+b'\0'
        assert json.loads(payload[20:-1])==document
        (ROOT/'dist'/f'{name}.amxd').write_bytes(payload)
    for src in (ROOT/'src').glob('*.js'):
        shutil.copy2(src,ROOT/'dist'/src.name)
        shutil.copy2(src,ROOT/'devices'/src.name)
    with ZipFile(ROOT/'CCNotes.zip','w',ZIP_DEFLATED) as archive:
        for asset in sorted((ROOT/'dist').iterdir()):
            if asset.is_file():archive.write(asset,'CCNotes/'+asset.name)
        for name in ['README.md','ACCEPTANCE.md','ARCHITECTURE.md']:
            archive.write(ROOT/name,'CCNotes/'+name)
    print('Built five MIDI effects in CCNotes/dist; keep both JS files beside the AMXDs.')

def main():
    parser = argparse.ArgumentParser(description='Build and install CCNotes into the Ableton User Library by default.')
    actions = parser.add_mutually_exclusive_group()
    actions.add_argument('--no-install', action='store_true', help='Build distribution only; skip User Library installation')
    actions.add_argument('--install', action='store_true', help='Explicitly request the default build-and-install behavior')
    actions.add_argument('--verify-installed', action='store_true', help='Verify installed artifacts match dist without rebuilding')
    args = parser.parse_args()
    if args.verify_installed:
        verify_installed()
        print('Verified all five AMXDs and both support scripts in both User Library CCNotes folders.')
        return
    build()
    if not args.no_install:
        install()


if __name__=='__main__':main()
