import AudioItem from '../manager/AudioItem';
import MediaItemInit from './MediaItemInit';

export default class MediaItemData {
  title: string;
  img: Resource;
  subTitle: string;
  list: AudioItem[];
  others?: string | Resource;

  constructor(init: MediaItemInit) {
    this.title = init.title;
    this.img = init.img;
    this.subTitle = init.subTitle;
    this.list = init.list;
    this.others = init.others;
  }
}
