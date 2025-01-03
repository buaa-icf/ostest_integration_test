import { _decorator, Component, director, Node } from 'cc';
import { sceneBase } from './sceneBase.cp';
import { GaneState } from './GameState';
import { EditAction } from './EditAction';
import { Layoutroot } from './Layoutroot';
import { eventdispatch } from './eventdispatch';
const { ccclass, property } = _decorator;

@ccclass('Mainaction')//游戏界面
export class Mainaction extends sceneBase {
    @property({type:Node})
    edit_root :Node=null   //编辑器模式

    start() {

this.init_bg_sound();
if(GaneState.game_model==0)//游戏模式，此时编辑器的node要隐藏掉
{
    this.edit_root.active=false
    this.start_game();
    eventdispatch.get_target().on(eventdispatch.message,this.replay,this)
}
else{//编辑模式
    this.edit_root.active=true
    this.edit_root.getChildByName("edit").getComponent(EditAction).start_edit()
//获取edit_root节点的名为edit子节点的EditAction组件名(这个组件是自定义脚本)并且调用start_edit方法  (EditAction)是自定义组件类

}
    }

    //游戏模式   开始游戏
    start_game(){
let layout_root=this.node.getChildByName("Layout").getComponent(Layoutroot);
layout_root.start_game_all();
//调用layoutroot的开始游戏
    }

    update(deltaTime: number) {
        
    }
    next_level(){
        this.start_game();
    }


    click_back(){
        this.stop_sound() //在切换场景前所以该场景的音乐关闭
        director.loadScene("home")  //点击即场景切换  回退至游戏初始界面
    }

    replay(){
        this.start_game();
    }
}


