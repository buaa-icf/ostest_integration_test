import MediaItemData from './MediaItemData';
import MediaItemInit from './MediaItemInit';

export default class ListHistoryItemData extends MediaItemData {
  others?: Resource;

  constructor(init: MediaItemInit) {
    super(init);
  }
}
