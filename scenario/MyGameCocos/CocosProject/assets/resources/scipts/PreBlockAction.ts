import { _decorator, Component, instantiate, Node, Prefab, Rect, Sprite, SpriteFrame, tween, UITransform, Vec3 } from 'cc';
const { ccclass, property } = _decorator;

@ccclass('PreBlockAction')
export class PreBlockAction extends Component {
private sprite_index:number = 0

private type_array:SpriteFrame[]=[];

public old:PreBlockAction=null;

private pos:Vec3=null;

public static blocksInLayout03Stack: PreBlockAction[] = []; // 用栈来标记最后一个入栈的元素

private time_mark:number=0;

set_time(){
    this.time_mark=new Date().getTime();
}

get_time(){
    return this.time_mark;
}

    start() {

    }

    update(deltaTime: number) {
        
    }

copy_block(parent:Node,prefab:Prefab):PreBlockAction{
    let new_block=instantiate(prefab);
    let scripts=new_block.getComponent(PreBlockAction);
   // PreBlockAction.blocksInLayout03Stack.push(scripts);    // 向 layout03 添加块时，同时将其推入栈中
    new_block.setParent(parent);      //我们要将这个预制体的PreBlockAction在layout01和03两个不同node之间挂载，所以要传入node参数
    let world_pos=this.node.getWorldPosition();
    let local_pos=parent.getComponent(UITransform).convertToNodeSpaceAR(world_pos);
    new_block.setPosition(local_pos)
    scripts.show_shadow();     
    scripts.init(this.sprite_index,this.type_array);
    scripts.refresh(false);
    scripts.old=this;     //当前对象（this）的引用赋值给 scripts.old
    this.node.active=false;
    return scripts;

}

get_bounding_box():Rect{
return this.node.getComponent(UITransform).getBoundingBox();
}
get_own_bounding_box():Rect{
    let rect1=this.get_bounding_box();
    let num=15;
    let rect2=new Rect(rect1.x+num,rect1.y+num, rect1.width-num*2,rect1.height-num*2)
    return rect2;   //获取一个更小的包围盒   边界框中心是没有变化的，
    }



    card_isclick():boolean{
     return   !this.node.getChildByName("yang-cao-shadow").active      //激活则不可点击返回false
    }

    animation_start(){
        tween(this.node)
        .to(0.1, {scale: new Vec3(1.1,1.1,1) }) 
        .call(() => {
        })
        .start(); 
}
    
animation_end(){
    tween(this.node)
    .to(0.1, {scale: new Vec3(1,1,1) }) 
    .call(() => {
    })
    .start(); 
}

    show_shadow(){
this.node.getChildByName("yang-cao-shadow").active=false;
    }

hide_shadow(){
this.node.getChildByName("yang-cao-shadow").active=true;
}

init(sprite_index:number,type_array:SpriteFrame[]){
    this.sprite_index=sprite_index;
    this.type_array=type_array
    }
    
    refresh(move:boolean){
        if(move)
        {this.moveCard();
        this.node.getChildByName("yang-cao").getComponent(Sprite).spriteFrame=this.type_array[this.sprite_index]
        this.node.getChildByName("yang-cao-shadow").getComponent(Sprite).spriteFrame=this.type_array[this.sprite_index]
        }
        else{
            this.node.getChildByName("yang-cao").getComponent(Sprite).spriteFrame=this.type_array[this.sprite_index]
            this.node.getChildByName("yang-cao-shadow").getComponent(Sprite).spriteFrame=this.type_array[this.sprite_index]
        }
    }

    get_index(){
        return  this.sprite_index;
    }

    set_index(num:number){
        this.sprite_index=num;

    }
    
   moveCard() {
    // 使用 tween 创建缓动动画     给refresh和随机化增加动画
    this.pos=this.node.getPosition();
    tween(this.node)
        .to(0.15, {position: new Vec3(0,0, 0) }, { easing: 'sineOutIn' }) 
        .to(0.15, {position: new Vec3(this.pos.x, this.pos.y, 0) }, { easing: 'sineOutIn' })    //飘动方向
        .call(() => {
        })
        .start(); // 启动缓动动画
}

set_pos(pos:Vec3){
this.pos=pos;
}

get_pos(){
return this.pos;
}
}


