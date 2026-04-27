import { describe, it, expect } from '@ohos/hypium';

import { TrackClassModel } from '../main/ets/pages/stateManagement/ClassModel';

export default function trackStringSampleTest() {
  describe('TrackStringSampleTest', () => {
    it('constructor_initializes_default_track_state_001', 0, () => {
      const track = new TrackClassModel('value1', 1, false, 'any1',
        ['valueArr1', 'valueArr2', 'valueArr3'], [0, 1, 2, 3], [false, true, false, false], ['any1', 0, 2, false],
        'value1', 1, false, 'any1', ['valueArr1', 'valueArr2', 'valueArr3'], [0, 1, 2, 3], [false, true, false, false],
        ['any1', 0, 2, false], 'value1', 1, false, 'any1');

      expect(track.value).assertEqual('value1');
      expect(track.value1).assertEqual(1);
      expect(track.value2).assertFalse();
      expect(track.value3 as string).assertEqual('any1');
      expect(track.value4.length).assertEqual(3);
      expect(track.value4[0]).assertEqual('valueArr1');
      expect(track.value5[3]).assertEqual(3);
      expect(track.value6[1]).assertTrue();
      expect(track.value7.length).assertEqual(4);
      expect(track.value8).assertEqual('value1');
      expect(track.value9).assertEqual(1);
      expect(track.value10).assertFalse();
      expect(track.value11 as string).assertEqual('any1');
      expect(track.value12[2]).assertEqual('valueArr3');
      expect(track.value13[1]).assertEqual(1);
      expect(track.value14[0]).assertFalse();
      expect(track.value15.length).assertEqual(4);
      expect(track.value16).assertEqual('value1');
      expect(track.value17).assertEqual(1);
      expect(track.value18).assertFalse();
      expect(track.value19 as string).assertEqual('any1');
    });
  });
}
