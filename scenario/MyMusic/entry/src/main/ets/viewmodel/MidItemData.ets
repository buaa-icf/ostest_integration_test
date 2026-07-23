import AudioItem from '../manager/AudioItem';
import MediaItemData from './MediaItemData';
import MediaItemInit from './MediaItemInit';

export default class MidItemData extends MediaItemData {
  list: AudioItem[] = [];

  constructor(init: MediaItemInit) {
    super(init);
  }
}
