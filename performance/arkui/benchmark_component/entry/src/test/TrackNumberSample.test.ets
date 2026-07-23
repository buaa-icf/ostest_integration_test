import { describe, it, expect } from '@ohos/hypium';

import { TrackClassModel } from '../main/ets/pages/stateManagement/ClassModel';

export default function trackNumberSampleTest() {
  describe('TrackNumberSampleTest', () => {
    it('constructor_initializes_number_track_state_001', 0, () => {
      const numberArray: number[] = [0, 1, 2, 3];
      const track = new TrackClassModel('value1', 1, false, 'any1',
        ['valueArr1', 'valueArr2', 'valueArr3'], numberArray, [false, true, false, false], ['any1', 0, 2, false],
        'value1', 1, false, 'any1', ['valueArr1', 'valueArr2', 'valueArr3'], numberArray, [false, true, false, false],
        ['any1', 0, 2, false], 'value1', 1, false, 'any1');

      expect(track.value1).assertEqual(1);
      expect(track.value5).assertDeepEquals(numberArray);
      expect(track.value5[0]).assertEqual(0);
      expect(track.value5[3]).assertEqual(3);
      expect(track.value9).assertEqual(1);
      expect(track.value13).assertDeepEquals(numberArray);
      expect(track.value13[1]).assertEqual(1);
      expect(track.value13[2]).assertEqual(2);
      expect(track.value17).assertEqual(1);
    });
  });
}
