import { describe, it, expect, beforeEach } from '@ohos/hypium';

class BaseCtorForTest {
  name: string;
  name1: string;
  name2: string;
  name3: string;
  name4: string;
  name5: string;
  name6: string;
  name7: string;
  name8: string;
  name9: string;
  name10: string;
  name11: string;
  name12: string;
  name13: string;
  name14: string;
  name15: string;
  name16: string;
  name17: string;
  name18: string;
  name19: string;
  name20: string;
  name21: string;
  name22: string;
  name23: string;
  name24: string;
  name25: string;
  name26: string;
  name27: string;
  name28: string;
  name29: string;
  name30: string;
  name31: string;
  name32: string;
  name33: string;
  name34: string;
  name35: string;
  name36: string;
  name37: string;
  name38: string;
  name39: string;
  name40: string;
  name41: string;
  name42: string;
  name43: string;
  name44: string;
  name45: string;
  name46: string;
  name47: string;
  name48: string;
  name49: string;
  name50: string;

  constructor(name: string, name1: string, name2: string, name3: string, name4: string,
    name5: string, name6: string, name7: string, name8: string, name9: string,
    name10: string, name11: string, name12: string, name13: string, name14: string,
    name15: string, name16: string, name17: string, name18: string, name19: string,
    name20: string, name21: string, name22: string, name23: string, name24: string,
    name25: string, name26: string, name27: string, name28: string, name29: string,
    name30: string, name31: string, name32: string, name33: string, name34: string,
    name35: string, name36: string, name37: string, name38: string, name39: string,
    name40: string, name41: string, name42: string, name43: string, name44: string,
    name45: string, name46: string, name47: string, name48: string, name49: string, name50: string) {
    this.name = name;
    this.name1 = name1;
    this.name2 = name2;
    this.name3 = name3;
    this.name4 = name4;
    this.name5 = name5;
    this.name6 = name6;
    this.name7 = name7;
    this.name8 = name8;
    this.name9 = name9;
    this.name10 = name10;
    this.name11 = name11;
    this.name12 = name12;
    this.name13 = name13;
    this.name14 = name14;
    this.name15 = name15;
    this.name16 = name16;
    this.name17 = name17;
    this.name18 = name18;
    this.name19 = name19;
    this.name20 = name20;
    this.name21 = name21;
    this.name22 = name22;
    this.name23 = name23;
    this.name24 = name24;
    this.name25 = name25;
    this.name26 = name26;
    this.name27 = name27;
    this.name28 = name28;
    this.name29 = name29;
    this.name30 = name30;
    this.name31 = name31;
    this.name32 = name32;
    this.name33 = name33;
    this.name34 = name34;
    this.name35 = name35;
    this.name36 = name36;
    this.name37 = name37;
    this.name38 = name38;
    this.name39 = name39;
    this.name40 = name40;
    this.name41 = name41;
    this.name42 = name42;
    this.name43 = name43;
    this.name44 = name44;
    this.name45 = name45;
    this.name46 = name46;
    this.name47 = name47;
    this.name48 = name48;
    this.name49 = name49;
    this.name50 = name50;
  }
}

class DerivedCtorForTest extends BaseCtorForTest {
  constructor(name: string, name1: string, name2: string, name3: string, name4: string,
    name5: string, name6: string, name7: string, name8: string, name9: string,
    name10: string, name11: string, name12: string, name13: string, name14: string,
    name15: string, name16: string, name17: string, name18: string, name19: string,
    name20: string, name21: string, name22: string, name23: string, name24: string,
    name25: string, name26: string, name27: string, name28: string, name29: string,
    name30: string, name31: string, name32: string, name33: string, name34: string,
    name35: string, name36: string, name37: string, name38: string, name39: string,
    name40: string, name41: string, name42: string, name43: string, name44: string,
    name45: string, name46: string, name47: string, name48: string, name49: string, name50: string) {
    super(name, name1, name2, name3, name4, name5, name6, name7, name8, name9, name10, name11,
      name12, name13, name14, name15, name16, name17, name18, name19, name20, name21, name22,
      name23, name24, name25, name26, name27, name28, name29, name30, name31, name32, name33,
      name34, name35, name36, name37, name38, name39, name40, name41, name42, name43, name44,
      name45, name46, name47, name48, name49, name50);
  }
}

function createNames(prefix: string): string[] {
  let values: string[] = [];
  for (let i = 1; i <= 51; i++) {
    values.push(`${prefix}${i}`);
  }
  return values;
}

export default function monitorInheritConstructorLocalTest() {
  describe('MonitorInheritConstructorLocalTest', () => {
    let names: string[] = [];

    beforeEach(() => {
      names = createNames('n');
    });

    it('Base_constructor_assigns_all_fields_001', 0, () => {
      const base = new BaseCtorForTest(
        names[0], names[1], names[2], names[3], names[4],
        names[5], names[6], names[7], names[8], names[9],
        names[10], names[11], names[12], names[13], names[14],
        names[15], names[16], names[17], names[18], names[19],
        names[20], names[21], names[22], names[23], names[24],
        names[25], names[26], names[27], names[28], names[29],
        names[30], names[31], names[32], names[33], names[34],
        names[35], names[36], names[37], names[38], names[39],
        names[40], names[41], names[42], names[43], names[44],
        names[45], names[46], names[47], names[48], names[49], names[50]
      );

      expect(base.name).assertEqual('n1');
      expect(base.name25).assertEqual('n26');
      expect(base.name50).assertEqual('n51');
    });

    it('Derived_constructor_calls_super_and_assigns_fields_001', 0, () => {
      const derived = new DerivedCtorForTest(
        names[0], names[1], names[2], names[3], names[4],
        names[5], names[6], names[7], names[8], names[9],
        names[10], names[11], names[12], names[13], names[14],
        names[15], names[16], names[17], names[18], names[19],
        names[20], names[21], names[22], names[23], names[24],
        names[25], names[26], names[27], names[28], names[29],
        names[30], names[31], names[32], names[33], names[34],
        names[35], names[36], names[37], names[38], names[39],
        names[40], names[41], names[42], names[43], names[44],
        names[45], names[46], names[47], names[48], names[49], names[50]
      );

      expect(derived.name).assertEqual('n1');
      expect(derived.name33).assertEqual('n34');
      expect(derived.name50).assertEqual('n51');
    });
  });
}
