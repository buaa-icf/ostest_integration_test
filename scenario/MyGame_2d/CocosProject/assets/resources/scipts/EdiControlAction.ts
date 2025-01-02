import { _decorator, Button, Color, Component, EditBox, EventTouch, instantiate, Label, Node, Prefab, size, Vec3 } from 'cc';
import { GaneState } from './GameState';
import { Layout01 } from './Layout01';
import { eventdispatch } from './eventdispatch';
import { PreBlockAction } from './PreBlockAction';
import { EditAction } from './EditAction';
const { ccclass, property } = _decorator;

@ccclass('EdiControlAction')
export class EdiControlAction extends Component {
@property({type:Label})
Label_01:Label=null  //显示按的是什么

@property({type:Label})
Label_02:Label=null    //显示多少个block

@property({type:Label})
Label_03:Label=null

@property({type:Label})
Label_04:Label=null //显示message

@property({type:EditBox})
editbox_x:EditBox=null

@property({type:EditBox})
editbox_y:EditBox=null

@property({type:EditBox})
editbox_data:EditBox=null

@property({type:Prefab})
pre_block:Prefab=null;

@property({type:Layout01})  //Layout01脚本的组件  实例化layout01则可以调用其所有方法
layout01:Layout01=null;


    start() {
        this.refush_model();
        eventdispatch.get_target().on(eventdispatch.blocksize,this.update_size,this)
        //eventTarget.on(type, func, target?);type 为事件注册字符串，func 为执行事件监听的回调，target 为事件接收对象。如果 target 没有设置，则回调里的 this 指向的就是当前执行回调的对象。
    }

    update_size(){
let size =this.layout01.get_all_children().length;
this.Label_02.string=""+size;

if(size%3==0)
{
    this.Label_02.color=Color.RED
}
else{
    this.Label_02.color=Color.WHITE
}
    }


refush_model(){
    switch(GaneState.edit_model)
    {
        case 1:
            this.Label_01.string="添加箱子";
            break;
        case 2:
            this.Label_01.string="删除箱子";
            break;
        case 3:
            this.Label_01.string="添加格子";
            break;
        case 4:
            this.Label_01.string="删除格子";
            break;
    }
    
}

click_model(event:EventTouch,args:string){   //在cocos里的click event设置  args是传入的参数
    GaneState.edit_model=Number(args);  //将args转化成Number
   this.refush_model();
}

click_import(){
let data =this.editbox_data.string;
//导入前先判断数据是否有问题然后再清除原本的所有节点再生成，然后刷新遮挡关系和显示的block的数量
this.layout01.clear_all();
let  arr =JSON.parse(data);
for(let ele of arr)
{
   this.layout01.add_block_by_local_position(new Vec3(ele.x,ele.y))
}
eventdispatch.get_target().emit(eventdispatch.tips,"已导入")
this.layout01.shadow_active();  //刷新遮挡关系
this.update_size();    //刷新block数量
}


click_export(){
  let children=this.layout01.get_all_children();
  if(children.length%3!=0 || children.length==0)  //不是3的倍数不能导出
  {
    this.Label_04.string="必须是3的倍数";
    return;
  }
let array=[];
for(let ele of children)
{
    let position=ele.getPosition();    //getposition()获取子节点坐标时，获取到的不是世界坐标，而是节点坐标
    array.push({x:Math.ceil(position.x),y:Math.ceil(position.y)})    //ceil向上取整   floor向下取整
    let str=JSON.stringify(array);
    this.editbox_data.string=str;
    eventdispatch.get_target().emit(eventdispatch.tips,"已导出")
}
}


click_clear_all(){
this.layout01.clear_all();
eventdispatch.get_target().emit(eventdispatch.tips,"clear all")    //开始注册事件

}
click_custon_grid(){
let x=this.editbox_x.string;
let y=this.editbox_y.string;
this.node.getParent().getChildByName("edit").getComponent(EditAction).add_grid(Number(x),Number(y),size(10,10))
}

    update(deltaTime: number) {
        
    }


}


