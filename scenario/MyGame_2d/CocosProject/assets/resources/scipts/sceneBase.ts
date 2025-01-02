import { _decorator, AudioSource, Button, Component, Node } from 'cc';
import { GaneState } from './GameState';
const { ccclass, property } = _decorator;

@ccclass('sceneBase')
export class sceneBase extends Component {
@property({type:Button})
Button_sound:Button=null;       //这个是在cocos里拖拽绑定的
audiosource:AudioSource=null;  //这个是通过getComponent绑定的
start() {

}

update(deltaTime: number) {
    
}

init_bg_sound() {
this.audiosource=this.node.getComponent(AudioSource)
this.open_close_sound()
    }

private open_close_sound(){
if(GaneState.sound_state)  //一开始状态是false  场景预加载就会调用，后续每次按钮就会改变GaneState.sound_state
{
this.Button_sound.node.getChildByName("sound-close").active=false
this.Button_sound.node.getChildByName("sound-open").active=true//点击按钮切换两个图片的状态
}
else{
    this.Button_sound.node.getChildByName("sound-close").active=true
    this.Button_sound.node.getChildByName("sound-open").active=false
} 

if(GaneState.sound_state){
    this.audiosource.play()
    this.audiosource.loop=true
}
else{
    if(this.audiosource.playing)
    {
        this.audiosource.stop()
        this.audiosource.loop=false
    }
}
}
stop_sound(){   //用来在切换场景的时候关闭音乐
    if(this.audiosource.playing)
    {
        this.audiosource.stop();
        this.audiosource.loop=false;
    }
}
    click_sound(){
        console.log("sound")
        GaneState.sound_state=!GaneState.sound_state;  //使用sound_state来定是否放音乐
        this.open_close_sound()
    }
   
}

