import { beforeEach, describe, expect, it } from '@ohos/hypium';
import { ClassModel, TrackClassModel } from '../main/ets/pages/stateManagement/ClassModel';

export default function classModelTest() {
  describe('ClassModelLocalTest', () => {
    let model: ClassModel;
    let trackModel: TrackClassModel;

    beforeEach(() => {
      model = new ClassModel(
        'state-a',
        42,
        true,
        'obj-a',
        ['s1', 's2', 's3'],
        [10, 20, 30],
        [true, false, true],
        ['obj-arr-a', 9, false, 'tail'],
        'state-b',
        -7,
        false,
        'obj-b',
        ['x1', 'x2'],
        [0, 1],
        [false, false],
        ['obj-arr-b', 1, true, 'done'],
        'state-c',
        1000,
        true,
        'obj-c'
      );
      trackModel = new TrackClassModel(
        'track-a',
        7,
        false,
        'obj-track-a',
        ['ts1', 'ts2', 'ts3'],
        [11, 22, 33],
        [false, true, false],
        ['obj-track-arr-a', 1, true, 'tail'],
        'track-b',
        -3,
        true,
        'obj-track-b',
        ['tx1', 'tx2'],
        [4, 5],
        [true, true],
        ['obj-track-arr-b', 0, false, 'done'],
        'track-c',
        500,
        false,
        'obj-track-c'
      );
    });

    it('ClassModel_constructor_assigns_all_fields_001', 0, () => {
      expect(model.value).assertEqual('state-a');
      expect(model.value1).assertEqual(42);
      expect(model.value2).assertEqual(true);
      expect(model.value3).assertEqual('obj-a');
      expect(model.value4[2]).assertEqual('s3');
      expect(model.value5[1]).assertEqual(20);
      expect(model.value6[1]).assertEqual(false);
      expect(model.value7[3]).assertEqual('tail');
      expect(model.value8).assertEqual('state-b');
      expect(model.value9).assertEqual(-7);
      expect(model.value10).assertEqual(false);
      expect(model.value11).assertEqual('obj-b');
      expect(model.value12[0]).assertEqual('x1');
      expect(model.value13[1]).assertEqual(1);
      expect(model.value14[0]).assertEqual(false);
      expect(model.value15[2]).assertEqual(true);
      expect(model.value16).assertEqual('state-c');
      expect(model.value17).assertEqual(1000);
      expect(model.value18).assertEqual(true);
      expect(model.value19).assertEqual('obj-c');
    });

    it('TrackClassModel_constructor_assigns_all_fields_001', 0, () => {
      expect(trackModel.value).assertEqual('track-a');
      expect(trackModel.value1).assertEqual(7);
      expect(trackModel.value2).assertEqual(false);
      expect(trackModel.value3).assertEqual('obj-track-a');
      expect(trackModel.value4[2]).assertEqual('ts3');
      expect(trackModel.value5[1]).assertEqual(22);
      expect(trackModel.value6[2]).assertEqual(false);
      expect(trackModel.value7[3]).assertEqual('tail');
      expect(trackModel.value8).assertEqual('track-b');
      expect(trackModel.value9).assertEqual(-3);
      expect(trackModel.value10).assertEqual(true);
      expect(trackModel.value11).assertEqual('obj-track-b');
      expect(trackModel.value12[0]).assertEqual('tx1');
      expect(trackModel.value13[1]).assertEqual(5);
      expect(trackModel.value14[1]).assertEqual(true);
      expect(trackModel.value15[3]).assertEqual('done');
      expect(trackModel.value16).assertEqual('track-c');
      expect(trackModel.value17).assertEqual(500);
      expect(trackModel.value18).assertEqual(false);
      expect(trackModel.value19).assertEqual('obj-track-c');
    });
  });
}
