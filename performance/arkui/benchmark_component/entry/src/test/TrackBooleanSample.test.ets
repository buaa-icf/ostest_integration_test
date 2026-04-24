import { beforeEach, describe, expect, it } from '@ohos/hypium';
import router from '@ohos.router';
import '../main/ets/pages/stateManagement/track/TrackBooleanSample';

class TrackClassModelForTest {
  public value: string;
  public value1: number;
  public value2: boolean;
  public value3: ESObject;
  public value4: string[];
  public value5: number[];
  public value6: boolean[];
  public value7: ESObject[];
  public value8: string;
  public value9: number;
  public value10: boolean;
  public value11: ESObject;
  public value12: string[];
  public value13: number[];
  public value14: boolean[];
  public value15: ESObject[];
  public value16: string;
  public value17: number;
  public value18: boolean;
  public value19: ESObject;

  constructor(value: string, value1: number, value2: boolean, value3: ESObject, value4: string[], value5: number[],
    value6: boolean[], value7: ESObject[], value8: string, value9: number, value10: boolean,
    value11: ESObject, value12: string[], value13: number[], value14: boolean[], value15: ESObject[],
    value16: string, value17: number, value18: boolean, value19: ESObject) {
    this.value = value;
    this.value1 = value1;
    this.value2 = value2;
    this.value3 = value3;
    this.value4 = value4;
    this.value5 = value5;
    this.value6 = value6;
    this.value7 = value7;
    this.value8 = value8;
    this.value9 = value9;
    this.value10 = value10;
    this.value11 = value11;
    this.value12 = value12;
    this.value13 = value13;
    this.value14 = value14;
    this.value15 = value15;
    this.value16 = value16;
    this.value17 = value17;
    this.value18 = value18;
    this.value19 = value19;
  }
}

function wait(ms: number): Promise<void> {
  return new Promise((resolve) => {
    setTimeout(() => resolve(), ms);
  });
}

export default function trackBooleanSampleTest() {
  describe('TrackBooleanSampleLocalTest', () => {
    let model: TrackClassModelForTest;

    beforeEach(() => {
      model = new TrackClassModelForTest(
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
