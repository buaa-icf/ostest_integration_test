import { _decorator, Component, Label, Node, tween, Vec3 } from 'cc';
import { eventdispatch } from './eventdispatch';
const { ccclass, property } = _decorator;

@ccclass('tips')
export class tips extends Component {
@property({type:Label})
msg_label:Label=null;



    start() {
this.node.setPosition(0,-888);
eventdispatch.get_target().on(eventdispatch.tips,this.show_tips,this);
    }

show_tips(msg:string){
this.msg_label.string=msg
this.node.setPosition(0,-66);
tween(this.node)
.to(0.6,{position:new Vec3(0,0,0)})
.to(1,{position:new Vec3(0,1000,0)})   //多少秒的移动事件 移动距离   
.call(()=>{
    this.node.setPosition(0,-888);       //移动完后的回调
})
.start();
    }   

    update(deltaTime: number) {
        
    }
}


