import { _decorator, AudioClip, AudioSource, Component, EventTouch, Input, instantiate, Node, Prefab, SpriteFrame, tween, UITransform, Vec2, Vec3 } from 'cc';
import { PreBlockAction } from './PreBlockAction';
import { GaneState } from './GameState';
import { Layoutroot } from './Layoutroot';
const { ccclass, property } = _decorator;
let isProcessing = false;
@ccclass('Layout01')
export class Layout01 extends Component {
    
    @property({type:Prefab})
    pre_block:Prefab=null;

    @property({type:[SpriteFrame]})
    type_block:SpriteFrame[]=[];
    
    cur_block:PreBlockAction=null;
    


    start() {    
   
if(GaneState.game_model == 1)
{
    return;
}
else {    //游戏模式注册卡牌点击事件
  
    this.node.on(Input.EventType.TOUCH_START,this.touch_start,this);
    this.node.on(Input.EventType.TOUCH_END,this.touch_end,this);
    this.node.on(Input.EventType.TOUCH_CANCEL,this.touch_cancel,this);
}
}


    touch_start(e:EventTouch){

let pos=e.getUILocation();   //世界坐标
let touch_block = this.get_block_touch(pos);
this.cur_block=touch_block
if(this.cur_block)   //获取到了可以点击的block就会执行动画
{
    this.cur_block.animation_start();
}
    }


    touch_end(e:EventTouch){    //我们需要判断start和end的block是否是同一块地方
let pos=e.getUILocation();
let touch_block = this.get_block_touch(pos);
if(this.cur_block)    //touch_start正确获取到了此时正常播放end动画
{
    this.cur_block.animation_end();
}
else{
    return;
}
if(touch_block!=this.cur_block)
{
    return;
}
console.log("click_end");
    this.node.parent.getComponent(Layoutroot).play_audiosource(0);
    this.node.parent.getComponent(Layoutroot).lay01_to_03(this.cur_block,this.pre_block);
 //点击阴影会报错
    }

    touch_cancel(){
        if(this.cur_block)    //touch_start正确获取到了点击的block 此时正常播放end动画      touch cancel事件比如点击后鼠标移开并且没松手就会触发该事件，不写的话就会放大不会缩小乐
        {
            this.cur_block.animation_end();
        }
    }

get_block_touch(pos:Vec2):PreBlockAction{
    let local_pos =this.node.getComponent(UITransform).convertToNodeSpaceAR(new Vec3(pos.x,pos.y))
    for(let i=0;i<this.node.children.length;i++)
    {  let data=this.node.children[i];
        if(!data.active)    //判断节点是否激活  
        {
            continue;
        }
        let click_block=data.getComponent(PreBlockAction);
        if(!click_block.card_isclick())         //不可点击就跳出去  主要是查看阴影图片是否激活
        {
            continue;
        }
      if(click_block.get_bounding_box().contains(new Vec2(local_pos.x,local_pos.y)))
      {
        return click_block;
    
      }
    }
    return null;
}



add_block_by_world(world:Vec3){       //传入一个世界坐标 然后转化为本地坐标再调用底下的add_block_by_local_position
    let local_pos =this.node.getComponent(UITransform).convertToNodeSpaceAR(world);
    this.add_block_by_local_position(local_pos);
}

add_block_by_local_position(local_pos:Vec3):PreBlockAction{
    let block =instantiate(this.pre_block);
    block.setPosition(local_pos);
    block.setParent(this.node)
    return block.getComponent(PreBlockAction)    //绑定在block上的脚本
}

delete_block_by_world(world:Vec3){
    let local_pos =this.node.getComponent(UITransform).convertToNodeSpaceAR(world);
    for(let i=0;i<this.node.children.length;i++)
    {
        if(this.node.children[i].getComponent(PreBlockAction).get_bounding_box().contains(new Vec2(local_pos.x,local_pos.y) ))
        {
            this.node.children[i].removeFromParent();
            break; 
        }
    }

}
get_all_children():Node[]{
    return this.node.children;
    }

clear_all(){
    this.node.removeAllChildren();
}

shadow_active(){    //调用的地方在设置PreBlockAction处，每放置一个PreBlockAction则判断一次
    for(let i=0;i<this.node.children.length;i++)   //遍历所有节点既block     
    {
let x1=this.node.children[i].getComponent(PreBlockAction);   //获取脚本然后判断如果被点击放入layout3了那就得跳过，不能丢入数组里不然显隐关系会有问题
if(!x1.node.active)   //非激活得跳过
{
    continue;
}
x1.show_shadow();
for(let j=i+1;j<this.node.children.length;j++){
    let x2=this.node.children[j].getComponent(PreBlockAction);
    if(!x2.node.active)
        {
            continue;
        }
    if(x1.get_own_bounding_box().intersects( x2.get_own_bounding_box() ))  //整个编辑器的子节点（既预制体block）进行一整个循环判断PreBlockAction是否与其他相交，相交则显示shadow
        {x1.hide_shadow();
        break;
        }
    }    
    }

}

//根据传入的number初始化游戏   读取number关卡的信息
start_game(level:number){
let level_data=GaneState.get_level_data(level);  //获取数据  这个对象包含一个名为 data 的属性，其类型为 { x: number; y: number; }[]，即一个包含对象的数组。数组确实有 length 属性，用于表示数组中元素的数量。
let type_index=this.get_random_type(level_data.data.length,level_data.type);//获取关卡的type值（多少个不同的卡片组）并且随机化卡片的展现  
let current_index=0;
for(let x=0;x<level_data.data.length;x++)
{let element =level_data.data[x];     //遍历关卡所有卡片位置
    if(x>0 && x%3==0)
    {
        current_index++;
        if(current_index>=type_index.length)
        {
            current_index=0;
        }
    }

let pre_block=this.add_block_by_local_position(new Vec3(element.x,element.y))
pre_block.init(type_index[current_index],this.type_block);
pre_block.refresh(true);
}
this.shadow_active();
this.random_block();
}

//get_random_type生成了一个随机排序的索引数组，并返回了前 num 个索引。
get_random_type(num:number,types_num:number) :number[]{     //num是卡片的数量，count是卡片的类型值 
        let arr: number[] = [];
        const typeIndices = Array.from({ length:types_num }, (_, i) => i); 
        for (let i = 0; i < num; i++) {
            const randomIndex = Math.floor(Math.random() * typeIndices.length);
            arr.push(typeIndices[randomIndex]);
        }

        return arr;
    
}

// random_block(): void {
//     let preBlockActions: PreBlockAction[] = [];
//     for (let child of this.node.children) {
//         let preBlockAction = child.getComponent(PreBlockAction);
//         if (preBlockAction) {
//             preBlockActions.push(preBlockAction);
//         }
//     }
 
    
//     for (let ele of preBlockActions) {
//         const data = preBlockActions[Math.floor(Math.random() * preBlockActions.length)];
//         let date_index=data.get_index();
//         data.set_index(ele.get_index());
//         ele.set_index(date_index);
//         data.refresh();
//         ele.refresh();
//     }
 

// }



random_block(): void {
    if (isProcessing) {   //模拟锁
        return;
    }
    isProcessing = true;  //加锁
    let preBlockActions: PreBlockAction[] = [];
    for (let child of this.node.children) {
        let preBlockAction = child.getComponent(PreBlockAction);
        if (preBlockAction) {
            if(!preBlockAction.node.active)
            {
                continue;
            }
            preBlockActions.push(preBlockAction);
        }
    }
    for (let i = preBlockActions.length - 1; i > 0; i--) {
        const j = Math.floor(Math.random() * (i + 1));
        // let data=preBlockActions[i];
        // let date_index=data.get_index();
        let data=preBlockActions[i];
        let date_index=data.get_index();
        preBlockActions[i].set_index(preBlockActions[j].get_index())
        preBlockActions[j].set_index(date_index)
        preBlockActions[i].refresh(true);
        preBlockActions[j].refresh(true);
    }
    

    setTimeout(() => {
        isProcessing = false;    //解锁
    }, 500);
}

get_blocknum(){
    return this.node.children.length;
}

replay_01(){
    this.node.removeAllChildren();
}

    update(deltaTime: number) {
        
    }

}


