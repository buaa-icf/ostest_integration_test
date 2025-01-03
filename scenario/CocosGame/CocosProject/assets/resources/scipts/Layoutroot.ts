import { _decorator, AudioClip, AudioSource, Component, director, instantiate, Node, Prefab, tween, UITransform, Vec3 } from 'cc';
import { Layout01 } from './Layout01';
import { Layout03 } from './Layout03';
import { PreBlockAction } from './PreBlockAction';
import { Mainaction } from './Mainaction';
import {Conversion}  from './Conversion'
import { Dialog } from './Dialog';
import { GaneState } from './GameState';
import { eventdispatch } from './eventdispatch';
const { ccclass, property } = _decorator;

let isProcessing = false;

@ccclass('Layoutroot')
export class Layoutroot extends Component {
    @property({type:Layout01})  
    layout01:Layout01=null;


    @property({type:Layout03})  
    layout03:Layout03=null;

    
    @property({type:[AudioClip]})     
    audio_clip_array:AudioClip[]=[];   //传入声音片段  有消除和点击  AudioClip是声音片段类型
    audio_source:AudioSource;

    @property({ type: Prefab })
    public dialog: Node = null

    @property({ type: Prefab })
    public dialog_end: Node = null

    @property({ type: Prefab })
    public dialog_game_over: Node = null


    play_audiosource(index:number){
        if (!this.audio_source) {
            console.error("Audio source is not initialized!");
            return;
        }
        this.audio_source.playOneShot(this.audio_clip_array[index])
        console.log("source is done")
    }

    start() {
        this.audio_source=this.node.getComponent(AudioSource);
    }

start_game_all(){
    this.layout01.replay_01();
    this.layout03.replay_03();
    this.layout01.start_game(GaneState.cur_level);
}


click_random(){
this.layout01.random_block()

}

click_back(){
    if (isProcessing) {   
        return;
    }
    isProcessing = true;
    let back_block=this.layout03.get_back_block();
    if(!back_block)
    { 
        this.message('小提示', '没有上一步可以回退')
        setTimeout(() => {
            isProcessing = false;    //解锁
        }, 500);
        return;
    }
    back_block.node.setParent(this.node);
    back_block.node.setPosition(this.node.getComponent(UITransform).convertToNodeSpaceAR(back_block.get_pos()));
    let targetPos=this.node.getComponent(UITransform).convertToNodeSpaceAR(back_block.old.node.getWorldPosition())    //获取原先节点的本地坐标
    tween(back_block.node)
    .to(0.2,{position:targetPos})
    .call(()=>{
        back_block.old.node.active=true;
        this.layout01.shadow_active();
    })
    .removeSelf()
    .start();
    this.layout03.order();
    setTimeout(() => {
        isProcessing = false;    //解锁
    }, 500);
   
    }
    click_home(){
        director.loadScene("home");
        this.node.removeAllChildren();
        GaneState.cur_level=1;
        Layout03.delete_block=0;
    }

public message(title: string, msg: string) {
    let dialogInstance = instantiate(this.dialog)
    let comp = dialogInstance.getComponent('Dialog') as Dialog
    comp.title = title
    comp.content = msg
    this.node.addChild(dialogInstance)
}

public message_end(title: string, msg: string)
{
    let dialogInstance = instantiate(this.dialog_end)
    let comp = dialogInstance.getComponent('Dialog') as Dialog
    comp.title = title
    comp.content = msg
    this.node.addChild(dialogInstance)
}

public message_game_over(title: string, msg: string)
{
    let dialogInstance = instantiate(this.dialog_game_over)
    let comp = dialogInstance.getComponent('Dialog') as Dialog
    comp.title = title
    comp.content = msg
    this.node.addChild(dialogInstance)
}

update(deltaTime: number) {
        
    }

lay01_to_03(preBlockAction:PreBlockAction,prefab:Prefab){
let copy_block=preBlockAction.copy_block(this.node,prefab);    //原节点的节点拷贝到3节点并且源节点隐藏
this.layout03.latestBlock=copy_block;
this.layout01.shadow_active();   //刷新1的显隐关系
let world_pos=this.layout03.get_contain_pos(copy_block);
let local_pos=this.node.getComponent(UITransform).convertToNodeSpaceAR(world_pos)
tween(copy_block.node)
.to(0.15, {position: local_pos }) 
.call(() => {
    let gamelevel=GaneState.cur_level;
    this.layout03.add(copy_block);
    this.layout03.del_block();
    if(gamelevel<5)
        {
            if(this.layout01.get_blocknum()==0&&this.layout03.get_blocknum()==0)   //跳转下一关
            {   
                let dialog_level=gamelevel-1;
                switch(gamelevel)    //获取第几关  根据不通关卡跳转四个场景
                {
                    case 1:
                    console.log("第一关跳转");
                    Conversion.set_level(dialog_level)
                    Layout03.delete_block=0;
                    eventdispatch.get_target().emit(eventdispatch.tips,"第一回:甄嬛被贬甘露寺，与果郡王互生情愫")
                    setTimeout(function() {
                        director.loadScene("dialog1");
                    }, 1000); 
                    break;
        
                    case 2:
                    Conversion.set_level(dialog_level);
                    Layout03.delete_block=0;
                    console.log("第二关跳转");
                    eventdispatch.get_target().emit(eventdispatch.tips,"第二回:熹妃回宫")
                    setTimeout(function() {
                        director.loadScene("dialog2");
                    }, 1000); 
                    break;

                    case 3:
                    Conversion.set_level(dialog_level);
                    Layout03.delete_block=0;
                    console.log("第三关跳转");
                    eventdispatch.get_target().emit(eventdispatch.tips,"第三回:滴血认亲一")
                    setTimeout(function() {
                        director.loadScene("dialog3");
                    }, 1000); 
                    break;
        
                    case 4:
                    Conversion.set_level(dialog_level);
                    Layout03.delete_block=0;
                    eventdispatch.get_target().emit(eventdispatch.tips,"第四回:滴血认亲一")
                    setTimeout(function() {
                        director.loadScene("dialog4");
                    }, 1000); 
                    director.loadScene("dialog4")    
                    break;
    
                    default:
                    console.error("未知的关卡数");
                    break;
                }
        
                //this.node.parent.getComponent(Mainaction).next_level();
            }
            else if(this.layout03.get_blocknum()==6)
            {
            this.message_end('小提示', '游戏结束');
            return;
            }
        
        }
        else if(gamelevel>=5)
        {
        this.message_game_over('小提示', '恭喜你游戏结束')
        }
})
.start(); // 启动缓动动画
}

}








