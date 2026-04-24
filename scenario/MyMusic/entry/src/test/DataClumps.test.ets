/*
 * Copyright (c) 2024 Shenzhen Kaihong Digital Industry Development Co., Ltd.
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

import { describe, beforeAll, it, expect } from '@ohos/hypium';
import AudioItem from '../main/ets/manager/AudioItem';
import BookTriItemData from '../main/ets/viewmodel/BookTriItemData';
import TriItemData from '../main/ets/viewmodel/TriItemData';
import MidItemData from '../main/ets/viewmodel/MidItemData';
import ListHistoryItemData from '../main/ets/viewmodel/ListHistoryItemData';
import ItemData from '../main/ets/viewmodel/ItemData';

/**
 * Reference test suite for the data-clumps refactoring candidate
 * (BookTriItemData / TriItemData / MidItemData / ListHistoryItemData / ItemData).
 *
 * These five constructors share the same tuple of fields
 * (title, img, subTitle, list, others) and are the target of a future
 * "Extract Superclass / Introduce Parameter Object" refactoring.
 *
 * The cases below pin down the externally observable constructor behaviour
 * (field assignment, optional parameter handling, list reference semantics)
 * so that any refactor — whether it introduces a base class, a value object,
 * or reorders parameters via an adapter — can be verified against an
 * unchanged test baseline.
 */

function mockResource(rid: number): Resource {
  const r: Resource = {
    bundleName: 'com.example.mymusic',
    moduleName: 'entry',
    id: rid,
    params: [],
    type: 10003
  };
  return r;
}

function mockAudioList(size: number): AudioItem[] {
  const list: AudioItem[] = [];
  for (let i = 0; i < size; i++) {
    list.push(new AudioItem(`audio_${i}`, mockResource(1000 + i), `artist_${i}`, 60 + i, i % 2 === 0));
  }
  return list;
}

export default function dataClumpsTest() {
  describe('DataClumpsConstructorContract', () => {
    let audioList: AudioItem[] = [];
    let coverImg: Resource = mockResource(1);
    let otherRes: Resource = mockResource(2);

    beforeAll(() => {
      audioList = mockAudioList(3);
      coverImg = mockResource(1);
      otherRes = mockResource(2);
    });

    it('BookTriItemData_assigns_all_eight_params_in_correct_order_with_others', 0, () => {
      const data = new BookTriItemData(
        'Song Of The Year', coverImg, 'Subtitle A', '#1', '9.5', '10M', audioList, 'extra-string'
      );
      expect(data.title).assertEqual('Song Of The Year');
      expect(data.img).assertEqual(coverImg);
      expect(data.subTitle).assertEqual('Subtitle A');
      expect(data.rank).assertEqual('#1');
      expect(data.score).assertEqual('9.5');
      expect(data.playNum).assertEqual('10M');
      expect(data.list).assertEqual(audioList);
      expect(data.list.length).assertEqual(3);
      expect(data.others).assertEqual('extra-string');
    });

    it('BookTriItemData_leaves_others_undefined_when_omitted', 0, () => {
      const data = new BookTriItemData('T', coverImg, 'S', 'R', '0.0', '0', audioList);
      expect(data.title).assertEqual('T');
      expect(data.subTitle).assertEqual('S');
      expect(data.rank).assertEqual('R');
      expect(data.score).assertEqual('0.0');
      expect(data.playNum).assertEqual('0');
      expect(data.list).assertEqual(audioList);
      expect(data.others === undefined).assertTrue();
    });

    it('TriItemData_assigns_title_img_subTitle_list_and_string_others', 0, () => {
      const data = new TriItemData('Tri', coverImg, 'Sub', audioList, 'tag-string');
      expect(data.title).assertEqual('Tri');
      expect(data.img).assertEqual(coverImg);
      expect(data.subTitle).assertEqual('Sub');
      expect(data.list).assertEqual(audioList);
      expect(data.list.length).assertEqual(3);
      expect(data.others).assertEqual('tag-string');
    });

    it('TriItemData_leaves_others_undefined_when_omitted', 0, () => {
      const data = new TriItemData('Tri', coverImg, 'Sub', audioList);
      expect(data.others === undefined).assertTrue();
    });

    it('MidItemData_assigns_all_params_and_accepts_string_others', 0, () => {
      const data = new MidItemData('Mid', coverImg, 'SubM', audioList, 'other-m');
      expect(data.title).assertEqual('Mid');
      expect(data.img).assertEqual(coverImg);
      expect(data.subTitle).assertEqual('SubM');
      expect(data.list).assertEqual(audioList);
      expect(data.others).assertEqual('other-m');
    });

    it('MidItemData_omitted_others_is_undefined_with_list_preserved', 0, () => {
      const data = new MidItemData('Mid', coverImg, 'SubM', audioList);
      expect(data.others === undefined).assertTrue();
      expect(data.list.length).assertEqual(3);
    });

    it('ListHistoryItemData_assigns_params_with_resource_others_and_field_order_preserved', 0, () => {
      const data = new ListHistoryItemData('Hist', coverImg, 'SubH', audioList, otherRes);
      expect(data.title).assertEqual('Hist');
      expect(data.img).assertEqual(coverImg);
      expect(data.subTitle).assertEqual('SubH');
      expect(data.list).assertEqual(audioList);
      expect(data.others).assertEqual(otherRes);
    });

    it('ListHistoryItemData_leaves_others_undefined_when_omitted', 0, () => {
      const data = new ListHistoryItemData('Hist', coverImg, 'SubH', audioList);
      expect(data.others === undefined).assertTrue();
      expect(data.subTitle).assertEqual('SubH');
    });

    it('ItemData_assigns_params_with_resource_others_matching_ListHistory_shape', 0, () => {
      const data = new ItemData('Item', coverImg, 'SubI', audioList, otherRes);
      expect(data.title).assertEqual('Item');
      expect(data.img).assertEqual(coverImg);
      expect(data.subTitle).assertEqual('SubI');
      expect(data.list).assertEqual(audioList);
      expect(data.others).assertEqual(otherRes);
    });

    it('ItemData_leaves_others_undefined_when_omitted', 0, () => {
      const data = new ItemData('Item', coverImg, 'SubI', audioList);
      expect(data.others === undefined).assertTrue();
    });

    it('constructors_do_not_defensive_copy_the_list_parameter', 0, () => {
      const shared: AudioItem[] = mockAudioList(2);
      const book = new BookTriItemData('t', coverImg, 's', 'r', 'sc', 'pn', shared);
      const tri = new TriItemData('t', coverImg, 's', shared);
      const mid = new MidItemData('t', coverImg, 's', shared);
      const hist = new ListHistoryItemData('t', coverImg, 's', shared);
      const item = new ItemData('t', coverImg, 's', shared);
      expect(book.list === shared).assertTrue();
      expect(tri.list === shared).assertTrue();
      expect(mid.list === shared).assertTrue();
      expect(hist.list === shared).assertTrue();
      expect(item.list === shared).assertTrue();
    });

    it('five_constructors_agree_on_shared_data_clump_fields', 0, () => {
      const title = 'shared-title';
      const subTitle = 'shared-sub';
      const book = new BookTriItemData(title, coverImg, subTitle, 'r', 's', 'p', audioList);
      const tri = new TriItemData(title, coverImg, subTitle, audioList);
      const mid = new MidItemData(title, coverImg, subTitle, audioList);
      const hist = new ListHistoryItemData(title, coverImg, subTitle, audioList);
      const item = new ItemData(title, coverImg, subTitle, audioList);

      expect(book.title).assertEqual(title);
      expect(tri.title).assertEqual(title);
      expect(mid.title).assertEqual(title);
      expect(hist.title).assertEqual(title);
      expect(item.title).assertEqual(title);

      expect(book.subTitle).assertEqual(subTitle);
      expect(tri.subTitle).assertEqual(subTitle);
      expect(mid.subTitle).assertEqual(subTitle);
      expect(hist.subTitle).assertEqual(subTitle);
      expect(item.subTitle).assertEqual(subTitle);

      expect(book.img).assertEqual(coverImg);
      expect(tri.img).assertEqual(coverImg);
      expect(mid.img).assertEqual(coverImg);
      expect(hist.img).assertEqual(coverImg);
      expect(item.img).assertEqual(coverImg);

      expect(book.list).assertEqual(audioList);
      expect(tri.list).assertEqual(audioList);
      expect(mid.list).assertEqual(audioList);
      expect(hist.list).assertEqual(audioList);
      expect(item.list).assertEqual(audioList);
    });
  });
}
