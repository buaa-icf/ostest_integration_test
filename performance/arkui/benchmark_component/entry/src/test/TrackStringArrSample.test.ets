import { describe, it, expect } from '@ohos/hypium';

import { TrackClassModel } from '../main/ets/pages/stateManagement/ClassModel';

export default function trackStringArrSampleTest() {
  describe('TrackStringArrSampleTest', () => {
    it('constructor_initializes_string_array_track_state_001', 0, () => {
      const stringArray: string[] = ['valueArr1', 'valueArr2', 'valueArr3'];
      const numberArray: number[] = [0, 1, 2, 3];
      const booleanArray: boolean[] = [false, true, false, false];
      const objectArray: ESObject[] = ['any1', 0, 2, false];
      const track = new TrackClassModel('value1', 1, false, 'any1', stringArray, numberArray,
        booleanArray, objectArray, 'value1', 1, false, 'any1', stringArray, numberArray, booleanArray,
        objectArray, 'value1', 1, false, 'any1');

      expect(track.value4).assertDeepEquals(stringArray);
      expect(track.value4[0]).assertEqual('valueArr1');
      expect(track.value4[2]).assertEqual('valueArr3');
      expect(track.value4.length).assertEqual(3);
      expect(track.value5).assertDeepEquals(numberArray);
      expect(track.value6).assertDeepEquals(booleanArray);
      expect(track.value7).assertDeepEquals(objectArray);
      expect(track.value12).assertDeepEquals(stringArray);
      expect(track.value13).assertDeepEquals(numberArray);
      expect(track.value14).assertDeepEquals(booleanArray);
      expect(track.value15).assertDeepEquals(objectArray);
      expect(track.value).assertEqual('value1');
      expect(track.value19 as string).assertEqual('any1');
    });
  });
}
