import { beforeEach, describe, expect, it } from '@ohos/hypium';
import { ClassModel } from '../main/ets/pages/stateManagement/ClassModel';

export default function classModelTest() {
  describe('ClassModelLocalTest', () => {
    let model: ClassModel;

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
  });
}
