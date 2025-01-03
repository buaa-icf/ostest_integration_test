import { _decorator, Component, Node,EventTarget } from 'cc';
const { ccclass, property } = _decorator;

const eventTarget  = new EventTarget()
//Cocos Creator 引擎提供了 EventTarget 类，用以实现自定义事件的监听和发射，在使用之前，需要先从 'cc' 模块导入，同时需要实例化一个 EventTarget 对象。
@ccclass('eventdispatch')
export class eventdispatch extends Component {

 //事件key   
public static blocksize="blocksize"
public static tips="tips"
public static message="message"
public static progress="progress"

private static data:eventdispatch

static get_target():EventTarget{
if(eventdispatch.data==null)
{
    eventdispatch.data = new eventdispatch()
}
return eventdispatch.data.get_event_target()
   }
   
private get_event_target():EventTarget{
return eventTarget         //eventdispatch类调用这个函数获得eventTarget然后触发事件
}

}
//事件的监听类  用emit触发事件         单例模式

