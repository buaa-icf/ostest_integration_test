import { _decorator, Component, EventTouch, Input, instantiate, Node, Prefab, Size, UITransform, Vec2, Vec3 } from 'cc';
import { GaneState } from './GameState';
import { Layout01 } from './Layout01';
import { eventdispatch } from './eventdispatch';
import { EdiControlAction } from './EdiControlAction';
const { ccclass, property } = _decorator;

@ccclass('EditAction') //这个是用来初始化编辑器的格子和这个层级的block的
export class EditAction extends Component {
    @property({type:Prefab})
    pre_grid:Prefab=null   //这个就是格子的预制体
    @property({type:Layout01})  //Layout01脚本的组件
    layout01:Layout01=null;

    @property({type:EdiControlAction})  
    layout:EdiControlAction=null;
    cur_grid:Node=null

    start() {

    }

    update(deltaTime: number) {
        
    }

private init_grid(){//开始编辑格子
this.node.removeAllChildren(); //清除这个EditAction的所有子节点防止干扰
let start_x=this.node.getComponent(UITransform).width/2*(-1);
let start_y=this.node.getComponent(UITransform).height/2;
for(let i=0;i<15;i++)
{let x=start_x+(38.5*(i+1))
    for(let j=0;j<17;j++)
    {
        let y=start_y+(40*(j+1)*-1);
        this.add_grid(x,y);
    }
}
}



add_grid(x:number,y:number,size?:Size)
{
    let grid=instantiate(this.pre_grid)  //实例化pre_grid
    grid.setPosition(x,y);
    grid.setParent(this.node); //why?将网格的父节点设置为当前对象（this）的 node 属性，将网格设置为某个节点的子节点意味着网格将在这个节点的坐标系内被渲染和管理。这通常是为了保持场景的组织结构，便于管理和渲染。
    if(size)//传入就按传入的来，否则就默认
    {
        grid.getComponent(UITransform).setContentSize(size)
    }

}


    start_edit(){  //开始编辑编辑器
this.init_grid();
this.node.on(Input.EventType.TOUCH_END,this.touch_end,this);  //绑定事件
this.node.on(Input.EventType.TOUCH_MOVE,this.touch_move,this);
//监听一个移动事件可以根据鼠标移动连续生成block 
this.node.on(Input.EventType.MOUSE_MOVE,this.mouse_move,this)
}

mouse_move(e:EventTouch){
    let wake=e.getUILocation();
    let local_pos =this.node.getComponent(UITransform).convertToNodeSpaceAR(new Vec3(wake.x,wake.y))
    let x=Math.floor(local_pos.x)
    let y=Math.floor(local_pos.y)
    this.layout.Label_03.string="("+x+","+y+")"

}

touch_move(e:EventTouch){
    let wake=e.getUILocation();
    let local_pos =this.node.getComponent(UITransform).convertToNodeSpaceAR(new Vec3(wake.x,wake.y))
    if(GaneState.edit_model!=1)
    {
        return;
    }
    for(let i=this.node.children.length-1;i>=0;i--)    
    {
        let grid=this.node.children[i];     //pre_grid     
        if(this.cur_grid===grid)   //为了防止在一个小节点内移动产生大量图像需要做判断
        {
          continue;     //如果 this.cur_grid 已经等于 grid（即它们指向同一个节点），则跳过更新操作，并继续下一次循环迭代。
          //如果 this.cur_grid 不等于 grid，则执行 this.cur_grid = grid;，更新当前选中的网格节点为 grid。
        }
        if(grid.getComponent(UITransform).getBoundingBox().contains(new Vec2(local_pos.x,local_pos.y)))   
            {
            this.cur_grid=grid;
            this.layout01.add_block_by_world(grid.getWorldPosition());
            this.layout01.shadow_active();
            eventdispatch.get_target().emit(eventdispatch.blocksize)    //刷新block数量
            break;
    }


}
}



    touch_end(e:EventTouch){
let wake=e.getUILocation();
let local_pos =this.node.getComponent(UITransform).convertToNodeSpaceAR(new Vec3(wake.x,wake.y))//通过 e.getLocation() 获取触摸位置，然后使用 convertToNodeSpaceAR 方法将这个位置从屏幕空间转换到节点（this.node）的局部空间
switch(GaneState.edit_model){
    case 1:  //是添加block
        for(let i=this.node.children.length-1;i>=0;i--)  //遍历每一个节点，然后判断节点的位置是否在grid这个块块里面
        {
        let grid=this.node.children[i];  //获取每一个grid节点
        if(this.cur_grid===grid)  
        {
          continue;     
        }
        if(grid.getComponent(UITransform).getBoundingBox().contains(new Vec2(local_pos.x,local_pos.y)))    //获取节点的范围 用getBoundingBox方法  ，contains要传入一个二维数组
            {
            this.cur_grid=grid;
            this.layout01.add_block_by_world(grid.getWorldPosition());
            this.layout01.shadow_active();
            break;
        }
        }  //生成的block要在layout的层级一里面
        eventdispatch.get_target().emit(eventdispatch.blocksize)    //发送事件blocksize是事件的key  .on可以监听
    break;


    case 2:   //2是删除block
     this.layout01.delete_block_by_world(new Vec3(wake.x,wake.y))
     eventdispatch.get_target().emit(eventdispatch.blocksize)
     this.layout01.shadow_active();
    break;

    case 3:
    this.add_grid(local_pos.x,local_pos.y,new Size(10,10))
    break;

    case 4:
    for(let i=this.node.children.length-1;i>=0;i--)
    {
        let grid=this.node.children[i];
        if(grid.getComponent(UITransform).getBoundingBox().contains( new Vec2(local_pos.x,local_pos.y) ))     //删除图片判断条件是.getComponent(PreBlockAction)
        {
            grid.removeFromParent();
            break;
        }
    }
    break;
}
}



}


