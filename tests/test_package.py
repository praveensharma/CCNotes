import importlib.util
import json
import struct
import unittest
from pathlib import Path

ROOT=Path(__file__).resolve().parents[1]
spec=importlib.util.spec_from_file_location('build',ROOT/'tools/build.py')
build=importlib.util.module_from_spec(spec)
spec.loader.exec_module(build)

class PackageTest(unittest.TestCase):
    def test_amxd_and_patch_graphs(self):
        devices=list((ROOT/'dist').glob('*.amxd'))
        self.assertEqual(len(devices),5)
        for p in devices:
            raw=p.read_bytes()
            self.assertEqual(raw[:12],bytes.fromhex('616d7066040000006d6d6d6d'))
            self.assertEqual(raw[12:16],b'ptch')
            self.assertEqual(struct.unpack('<I',raw[16:20])[0],len(raw)-20)
            doc=json.loads(raw[20:].rstrip(b'\0'))
            self.assertEqual(doc,json.loads((ROOT/'devices'/(p.stem+'.maxpat')).read_text()))
            boxes={x['box']['id']:x['box'] for x in doc['patcher']['boxes']}
            for line in doc['patcher']['lines']:
                for side in ['source','destination']:self.assertIn(line['patchline'][side][0],boxes)
            for dep in doc['patcher']['dependency_cache']:
                for folder in ['dist','devices']:
                    self.assertEqual((ROOT/folder/dep['name']).read_bytes(),(ROOT/'src'/dep['name']).read_bytes())
            self.assertEqual(doc['patcher']['rect'][3],169)
            for b in boxes.values():
                if b.get('presentation'):
                    x,y,w,h=b['presentation_rect']
                    self.assertGreaterEqual(x,0);self.assertGreaterEqual(y,0)
                    self.assertLessEqual(y+h,169)
                    self.assertLessEqual(x+w,doc['patcher']['devicewidth'])
    def test_voice_controls_persist(self):
        for n in [1,4]:
            doc=build.patch('main',n)['patcher']
            boxes={x['box']['id']:x['box'] for x in doc['boxes']}
            for i in range(1,n+1):
                for field in build.SCHEMA:
                    b=boxes[f'v{i}_{field}']
                    self.assertEqual(b['parameter_enable'],1)
                    self.assertIn(b['id'],doc['parameters'])
                    self.assertEqual(b['saved_attribute_attributes']['valueof']['parameter_initial_enable'],1)

if __name__=='__main__':unittest.main()
