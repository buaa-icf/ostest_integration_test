import { _decorator, Component, instantiate, Node, Prefab, tween, UITransform, Vec3 } from 'cc';
import { PreBlockAction } from './PreBlockAction';
import { Layoutroot } from './Layoutroot';
import { Dialog } from './Dialog';
import { eventdispatch } from './eventdispatch';
const { ccclass, property } = _decorator;
@ccclass('Layout01')
export class Layout03 extends Component {
    @property({type:Node})
    containners:Node[]=[];

    @property({type:Layoutroot})
    layoutroot:Layoutroot;

    boxcontain:PreBlockAction[]=[];


    @property({type:Prefab})
    texiao:Prefab=null;

    public static delete_block:number=0

    public latestBlock:PreBlockAction=null;

    
    replay_03(){
        for(let data of this.boxcontain)
            {

                console.log(data)
                data.node.removeFromParent();
            }
        this.boxcontain.splice(0,this.boxcontain.length);
        
    }



    start() {

    }

    update(deltaTime: number) {
        
    }

    get_blocknum(){
        return this.boxcontain.length;
    }
 
order(){
    for(let x=0;x<this.boxcontain.length;x++)
    {
        let data=this.boxcontain[x];
        data.set_pos(this.containners[x].getPosition());
    
        if(data.node.getParent() == this.node)
        {
            tween(data.node)
            .to(0.1,{position:data.get_pos()})
            .start();
        }
    }
}


// moveCard(pre:PreBlockAction,index:number) {

//     let data=this.boxcontain[index];
//     data.set_pos(this.containners[index].getPosition());

//     if(data.node.getParent() == this.node)
//     {
//         tween(data.node)
//         .to(0.1,{position:data.get_pos()})
//         .start();
//     }
// }


// get_contain_pos(action:PreBlockAction,node:Node):Vec3
// {
//     let currentBox = this.boxcontain;
//     let res = currentBox.find((ele) => {
//         return ele.get_index()==action.get_index();
//     });
//     let targetIndex = res ? currentBox.indexOf(res) : 0;
//     for (let index = currentBox.length - 1; index >= targetIndex; index--) {
//         let curNode = currentBox[index];
//         // 从 containners 数组中获取下一个位置的信息（注意这里可能存在越界风险，如果 boxPostion 长度小于 currentBox）
//         let positionItem = this.containners[index + 1].getPosition();
//         this.boxcontain[index + 1] = curNode;
//         // 调用 moveCard 函数，将当前节点移动到新的位置
//         this.moveCard(curNode, index+1);
//         // 注意：这里的回调函数是空的，没有执行任何操作
        
// }
//  // 获取目标位置（即之前找到的匹配元素的位置，或者数组的第一个位置）
//  let targetPos = this.containners[targetIndex];
 
//  // 将当前卡牌节点（node）放入其在 cardsContainer 中的正确位置
//  this.containners[targetIndex] = node;

//  // 假设 lastCard 是一个存储了最后操作卡牌信息的对象，这里更新其 containerIndex 属性为当前卡牌的位置索引
//  //this.lastCard.containerIndex = targetIndex;
//  return this.node.getComponent(UITransform).convertToWorldSpaceAR(action.get_pos())
// }



get_contain_pos(action:PreBlockAction):Vec3{
    let temp:PreBlockAction[]=[];   
    let symbol01:boolean=false;
    let symbol02:boolean=false;
    for(let ele of this.boxcontain)
    {
        if(ele.get_index() === action.get_index())   //get_index获取图片储存的下标
        {
            symbol01=true;
            temp.push(ele)
        }else{
            if(symbol01&&!symbol02)
            {
                temp.push(action);
                symbol02=true;
            }
            temp.push(ele);
        } 
    }
    if(!symbol02)
    {
        temp.push(action);
    }
    this.boxcontain.splice(0,this.boxcontain.length)   //清空原数组
    this.boxcontain=temp;    //contain_action临时存储放入的脚本对象
    this.order();
return this.node.getComponent(UITransform).convertToWorldSpaceAR(action.get_pos())
}


// //获取添加节点应该处在的世界坐标
// get_contain_pos(action: PreBlockAction): Vec3 {
//     let index = this.contain_action.findIndex(ele => ele.get_index() === action.get_index());
//     if (index !== -1) {
//         // 如果找到了，先保留位置
//         this.contain_action.splice(index, 1, action); // 直接替换而不是复制整个数组
//     } else {
//         this.contain_action.push(action); // 直接添加
//     }
//     this.order(); // 排序和更新位置
//     return this.node.getComponent(UITransform).convertToWorldSpaceAR(action.get_pos());
// }





//三消逻辑
del_block(){
    let temp:PreBlockAction[]=[];
    for(let data of this.boxcontain)    
        //循环遍历contain_action，相同的则加入，不同的重新清空临时数组然后再继续知道有三个连续相同的则删除
    {
        if(temp.length==0)
        {
            temp.push(data);
        }
        else{
            if(temp[0].get_index()==data.get_index())
            {
                temp.push(data)
            }
            else{
                temp.splice(0,temp.length)
                temp.push(data)
            }
        if(temp.length>=3)
            {
                break;
            }    
        }
    }
    if(temp.length>=3){
    this.node.parent.getComponent(Layoutroot).play_audiosource(1);
    Layout03.delete_block+=3;
    eventdispatch.get_target().emit(eventdispatch.progress)
 for(let data of temp)    //消除三个相同的块
    //indexOf() 方法返回值在字符串中第一次出现的位置。
 {
let texiao=instantiate(this.texiao)
texiao.setParent(this.node);
texiao.setPosition(data.node.getPosition());
tween(texiao)
.delay(0.5)
.removeSelf()
.start();
let index = this.boxcontain.indexOf(data);
this.boxcontain.splice(index,1);
data.node.removeFromParent();   //本节点移除
data.old.node.removeFromParent();              //在layout1中隐藏的节点也删除
 }

 //this.scheduleOnce 是一个常用的方法，它允许你安排一个回调函数在未来的某个时间点只执行一次。这个方法通常用于延迟执行某些操作，比如动画结束后执行回调、等待一段时间后执行特定逻辑等。
this.scheduleOnce(()=>{
    this.order();
},0.3)
return true;
}
return false;    
}





// get_back_block(){
//     let latestBlock:PreBlockAction =null;
//     if (PreBlockAction.blocksInLayout03Stack.length === 0) {
//         console.error("No blocks to move from layout03 to layout01");
//         return;
//     }
// //     else  if (this.latestBlock === null) {
// //      this.layoutroot.message('小提示', '没有上一步可以回退',this.layoutroot.node)
// //    return;

// //     }
//    else {    
//     latestBlock = PreBlockAction.blocksInLayout03Stack.pop(); // 从栈中弹出最新添加的块
//     if (latestBlock) {
//        let index=this.boxcontain.indexOf(latestBlock);
//        if(index>=0)
//        {
//         this.boxcontain.splice(index,1);
//         latestBlock.set_pos(latestBlock.node.getWorldPosition())
//         latestBlock.node.removeFromParent();
//         return latestBlock;
//        }
//     }}
// }

get_back_block():PreBlockAction{
    let latestBlock:PreBlockAction =null;
    for(let ele of this.boxcontain)
    {
        if(!latestBlock)
        {
            latestBlock=ele;
        }
        else{
            if(ele.get_time()>latestBlock.get_time())
            {
                latestBlock=ele;
            }
        }
    }
if(latestBlock)
{
    let index=this.boxcontain.indexOf(latestBlock);
    if(index>=0)
    {
this.boxcontain.splice(index,1);
latestBlock.set_pos(latestBlock.node.getWorldPosition())
latestBlock.node.removeFromParent();
    }
    
}
    
return latestBlock;


}    

add(action:PreBlockAction)
{
    let local=this.node.getComponent(UITransform).convertToNodeSpaceAR(action.node.getWorldPosition())
    action.node.setParent(this.node);
    action.node.setPosition(local);
    action.set_time();
}
}


