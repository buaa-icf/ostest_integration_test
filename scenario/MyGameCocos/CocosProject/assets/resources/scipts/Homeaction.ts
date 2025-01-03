import { _decorator, AudioSource, Button, Component, director, Node } from 'cc';
const { ccclass, property } = _decorator;
import {GaneState} from "./GameState"
import {sceneBase} from "./sceneBase.cp"

@ccclass('Homeaction')
export class Homeaction extends sceneBase {

start() {
this.init_bg_sound()
    }

    update(deltaTime: number) {
        
    }

    click_start(){
        console.log("start")
        this.stop_sound() //在切换场景前所以该场景的音乐关闭
        director.loadScene("main")  //点击即场景切换  
    }
   
}


