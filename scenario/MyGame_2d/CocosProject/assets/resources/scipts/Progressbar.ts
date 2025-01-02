import { _decorator, Component, Node, ProgressBar } from 'cc';
import { GaneState } from './GameState';
import { Layout03 } from './Layout03';
const { ccclass, property } = _decorator;

@ccclass('Progressbar')
export class Progressbar extends Component {
 private progressBar:ProgressBar=null;

 private fillRange: number = 0;
 private total_number: number;
    start() {
let cur_level=GaneState.get_cur_level();
let level_data=GaneState.get_level_data(cur_level); 
this.total_number=level_data.data.length;
if (!this.progressBar) {
    this.progressBar = this.node.getComponent(ProgressBar);
}
}

    update(deltaTime: number) {
let newFillRange = Layout03.delete_block / this.total_number;
this.fillRange = Math.min(1, Math.max(0, newFillRange));
if (this.progressBar) {
this.progressBar.progress = this.fillRange;
        }
    }

}


