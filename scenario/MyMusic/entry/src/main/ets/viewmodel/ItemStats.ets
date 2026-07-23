export default class ItemStats {
  rank: string;
  score: string;
  playNum: string;

  constructor(rank: string, score: string, playNum: string) {
    this.rank = rank;
    this.score = score;
    this.playNum = playNum;
  }
}
