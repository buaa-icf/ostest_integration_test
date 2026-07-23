import AudioItem from '../manager/AudioItem';

export default class MediaItemInit {
  title: string;
  img: Resource;
  subTitle: string;
  list: AudioItem[];
  others?: string | Resource;

  constructor(title: string, img: Resource, subTitle: string, list: AudioItem[], others?: string | Resource) {
    this.title = title;
    this.img = img;
    this.subTitle = subTitle;
    this.list = list;
    this.others = others;
  }
}
