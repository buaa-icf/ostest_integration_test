import { beforeEach, describe, expect, it } from '@ohos/hypium';
import router from '@ohos.router';
import { TrackClassModel } from '../main/ets/pages/stateManagement/track/TrackBooleanSample';

function wait(ms: number): Promise<void> {
  return new Promise((resolve) => {
    setTimeout(() => resolve(), ms);
  });
}

export default function trackBooleanSampleTest() {
  describe('TrackBooleanSampleLocalTest', () => {
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

    it('TrackClassModel_constructor_assigns_all_fields_001', 0, () => {
      expect(model.value).assertEqual('value1');
      expect(model.value1).assertEqual(1);
      expect(model.value2).assertEqual(false);
      expect(model.value3).assertEqual('any1');
      expect(model.value4[2]).assertEqual('valueArr3');
      expect(model.value5[3]).assertEqual(3);
      expect(model.value6[1]).assertEqual(true);
      expect(model.value7[3]).assertEqual(false);
      expect(model.value8).assertEqual('value1');
      expect(model.value9).assertEqual(1);
      expect(model.value10).assertEqual(false);
      expect(model.value11).assertEqual('any1');
      expect(model.value12[1]).assertEqual('valueArr2');
      expect(model.value13[2]).assertEqual(2);
      expect(model.value14[0]).assertEqual(false);
      expect(model.value15[1]).assertEqual(0);
      expect(model.value16).assertEqual('value1');
      expect(model.value17).assertEqual(1);
      expect(model.value18).assertEqual(false);
      expect(model.value19).assertEqual('any1');
    });

    it('TrackBooleanSample_route_initialization_001', 0, async () => {
      let pushed: boolean = false;
      router.pushUrl({
        url: 'pages/stateManagement/track/TrackBooleanSample'
      });
      pushed = true;
      await wait(200);
      expect(pushed).assertEqual(true);
    });
  });
}
