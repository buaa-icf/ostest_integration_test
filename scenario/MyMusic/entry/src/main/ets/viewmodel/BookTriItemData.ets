import MediaItemData from './MediaItemData';
import MediaItemInit from './MediaItemInit';
import ItemStats from './ItemStats';

export default class BookTriItemData extends MediaItemData {
  stats: ItemStats;

  constructor(init: MediaItemInit, stats: ItemStats) {
    super(init);
    this.stats = stats;
  }
}
