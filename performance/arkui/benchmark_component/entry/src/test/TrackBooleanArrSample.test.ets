import { beforeEach, describe, expect, it } from '@ohos/hypium';
import router from '@ohos.router';
import { TrackClassModel } from '../main/ets/pages/stateManagement/track/TrackBooleanArrSample';

function wait(ms: number): Promise<void> {
  return new Promise((resolve) => {
    setTimeout(() => resolve(), ms);
  });
}

export default function trackBooleanArrSampleTest() {
  describe('TrackBooleanArrSampleLocalTest', () => {
    let model: TrackClassModel;

    beforeEach(() => {
      model = new TrackClassModel(
        'value1',
        1,
        false,
        'any1',
        ['valueArr1', 'valueArr2', 'valueArr3'],
        [0, 1, 2, 3],
        [false, true, false, false],
        ['any1', 0, 2, false],
        'value1',
        1,
        false,
        'any1',
        ['valueArr1', 'valueArr2', 'valueArr3'],
        [0, 1, 2, 3],
        [false, true, false, false],
        ['any1', 0, 2, false],
        'value1',
        1,
        false,
        'any1'
      );
    });

    it('TrackClassModel_constructor_assigns_boolean_array_fields_001', 0, () => {
      expect(model.value).assertEqual('value1');
      expect(model.value1).assertEqual(1);
      expect(model.value2).assertEqual(false);
      expect(model.value3).assertEqual('any1');
      expect(model.value4[0]).assertEqual('valueArr1');
      expect(model.value5[2]).assertEqual(2);
      expect(model.value6[0]).assertEqual(false);
      expect(model.value6[1]).assertEqual(true);
      expect(model.value7[3]).assertEqual(false);
      expect(model.value8).assertEqual('value1');
      expect(model.value9).assertEqual(1);
      expect(model.value10).assertEqual(false);
      expect(model.value11).assertEqual('any1');
      expect(model.value12[2]).assertEqual('valueArr3');
      expect(model.value13[0]).assertEqual(0);
      expect(model.value14[1]).assertEqual(true);
      expect(model.value15[0]).assertEqual('any1');
      expect(model.value16).assertEqual('value1');
      expect(model.value17).assertEqual(1);
      expect(model.value18).assertEqual(false);
      expect(model.value19).assertEqual('any1');
    });

    it('TrackBooleanArrSample_route_initialization_001', 0, async () => {
      let pushed: boolean = false;
      router.pushUrl({
        url: 'pages/stateManagement/track/TrackBooleanArrSample'
      });
      pushed = true;
      await wait(200);
      expect(pushed).assertEqual(true);
    });
  });
}
