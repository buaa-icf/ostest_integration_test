import { _decorator, Component, Node } from 'cc';
const { ccclass, property } = _decorator;
export interface Message {
  character: string; // 人物名
  text: string;      // 发言内容
  spritePath:string  //图片路径
}

export class GaneState  {
  public static sound_state:boolean=false
  public static game_model:number=0; //0是游戏模式，1是编辑模式

  public static edit_model:number=1; //1是添加block,2是删除block 3是添加grid 4是删除grid
 
  public static cur_level:number=1;   //默认关卡

  public static level =[
    { "level":4,
      "type":2,
      "data":[{"x":-155,"y":190},{"x":-39,"y":190},{"x":76,"y":190},{"x":-155,"y":-10},{"x":-39,"y":-10},{"x":76,"y":-10},{"x":-155,"y":-170},{"x":-39,"y":-170},{"x":76,"y":-170},{"x":-155,"y":-130},{"x":-39,"y":-130},{"x":76,"y":-130},{"x":-155,"y":30},{"x":-39,"y":30},{"x":76,"y":30},{"x":-155,"y":230},{"x":-39,"y":230},{"x":76,"y":230}]
    },
    { "level":2,
      "type":3,
      "data":[{"x":-155,"y":190},{"x":-39,"y":190},{"x":76,"y":190},{"x":-155,"y":-10},{"x":-39,"y":-10},{"x":76,"y":-10},{"x":-155,"y":-170},{"x":-39,"y":-170},{"x":76,"y":-170},{"x":-155,"y":-130},{"x":-39,"y":-130},{"x":76,"y":-130},{"x":-155,"y":30},{"x":-39,"y":30},{"x":76,"y":30},{"x":-155,"y":230},{"x":-39,"y":230},{"x":76,"y":230}]
    },
    { "level":3,
      "type":6,
      "data":[{"x":-155,"y":190},{"x":-39,"y":190},{"x":76,"y":190},{"x":-155,"y":-10},{"x":-39,"y":-10},{"x":76,"y":-10},{"x":-155,"y":-170},{"x":-39,"y":-170},{"x":76,"y":-170},{"x":-155,"y":-130},{"x":-39,"y":-130},{"x":76,"y":-130},{"x":-155,"y":30},{"x":-39,"y":30},{"x":76,"y":30},{"x":-155,"y":230},{"x":-39,"y":230},{"x":76,"y":230}]
    },
    { "level":1,
      "type":6,
      "data":[{"x":-155,"y":190},{"x":-39,"y":190},{"x":76,"y":190},{"x":-155,"y":-10},{"x":-39,"y":-10},{"x":76,"y":-10},{"x":-155,"y":-170},{"x":-39,"y":-170},{"x":76,"y":-170},{"x":-155,"y":-130},{"x":-39,"y":-130},{"x":76,"y":-130},{"x":-155,"y":30},{"x":-39,"y":30},{"x":76,"y":30},{"x":-155,"y":230},{"x":-39,"y":230},{"x":76,"y":230}]
    }
    //level 是关卡  type是不同类型的卡片，data是卡片的位置
    // { "level":2,
    //   "type":4,
    //   "data":[{"x":-193,"y":190},{"x":-155,"y":190},{"x":-116,"y":190},{"x":-78,"y":190},{"x":-39,"y":190},{"x":-1,"y":190},{"x":38,"y":190},{"x":115,"y":150},{"x":153,"y":70},{"x":115,"y":30},{"x":-78,"y":30},{"x":-116,"y":30},{"x":-155,"y":30},{"x":-155,"y":-90},{"x":-78,"y":-130},{"x":38,"y":-50},{"x":76,"y":-10},{"x":-1,"y":30},{"x":-39,"y":30},{"x":-193,"y":110},{"x":-78,"y":110},{"x":-39,"y":110},{"x":-1,"y":110},{"x":38,"y":110},{"x":115,"y":-10},{"x":115,"y":-50},{"x":76,"y":-90},{"x":38,"y":-130},{"x":153,"y":-170},{"x":38,"y":-210},{"x":-1,"y":-210},{"x":-39,"y":-170},{"x":-39,"y":-130},{"x":-155,"y":-10},{"x":-116,"y":-10},{"x":-78,"y":-50},{"x":-155,"y":-250},{"x":-155,"y":-170},{"x":-155,"y":-210},{"x":-116,"y":-210},{"x":-78,"y":-210},{"x":-39,"y":-210}]
    // },

    // { "level":3,
    //   "type":5,
    //   "data":[{"x":-193,"y":190},{"x":-155,"y":190},{"x":-116,"y":190},{"x":-78,"y":190},{"x":-39,"y":190},{"x":-1,"y":190},{"x":38,"y":190},{"x":115,"y":150},{"x":153,"y":70},{"x":115,"y":30},{"x":-78,"y":30},{"x":-116,"y":30},{"x":-155,"y":30},{"x":-155,"y":-90},{"x":-78,"y":-130},{"x":38,"y":-50},{"x":76,"y":-10},{"x":-1,"y":30},{"x":-39,"y":30},{"x":-193,"y":110},{"x":-78,"y":110},{"x":-39,"y":110},{"x":-1,"y":110},{"x":38,"y":110},{"x":115,"y":-10},{"x":115,"y":-50},{"x":76,"y":-90},{"x":38,"y":-130},{"x":153,"y":-170},{"x":38,"y":-210},{"x":-1,"y":-210},{"x":-39,"y":-170},{"x":-39,"y":-130},{"x":-155,"y":-10},{"x":-116,"y":-10},{"x":-78,"y":-50},{"x":-155,"y":-250},{"x":-155,"y":-170},{"x":-155,"y":-210},{"x":-116,"y":-210},{"x":-78,"y":-210},{"x":-39,"y":-210}]
    // },
    // { "level":4,
    //   "type":6,
    //   "data":[{"x":-193,"y":190},{"x":-155,"y":190},{"x":-116,"y":190},{"x":-78,"y":190},{"x":-39,"y":190},{"x":-1,"y":190},{"x":38,"y":190},{"x":115,"y":150},{"x":153,"y":70},{"x":115,"y":30},{"x":-78,"y":30},{"x":-116,"y":30},{"x":-155,"y":30},{"x":-155,"y":-90},{"x":-78,"y":-130},{"x":38,"y":-50},{"x":76,"y":-10},{"x":-1,"y":30},{"x":-39,"y":30},{"x":-193,"y":110},{"x":-78,"y":110},{"x":-39,"y":110},{"x":-1,"y":110},{"x":38,"y":110},{"x":115,"y":-10},{"x":115,"y":-50},{"x":76,"y":-90},{"x":38,"y":-130},{"x":153,"y":-170},{"x":38,"y":-210},{"x":-1,"y":-210},{"x":-39,"y":-170},{"x":-39,"y":-130},{"x":-155,"y":-10},{"x":-116,"y":-10},{"x":-78,"y":-50},{"x":-155,"y":-250},{"x":-155,"y":-170},{"x":-155,"y":-210},{"x":-116,"y":-210},{"x":-78,"y":-210},{"x":-39,"y":-210}]
    // }
  ]  //关卡数据
 

  public static dialogs: Message[][] = [
    //【第一场景：甄嬛被贬甘露寺，与果郡王互生情愫】
    [
      { character: '甄嬛', text: '这几年的情爱与时光，终究是错付了！' ,spritePath:"dialog_image/甄嬛(甘露寺)/spriteFrame"},
      { character: '浣碧', text: '小主，这也好，认清男人都是大猪蹄子！' ,spritePath:"dialog_image/浣碧/spriteFrame"},
      { character: '槿汐', text: '小主既然已离开宫中，就求则独善其身，莫要皇宫种种不堪过往烦扰心头。' ,spritePath:"dialog_image/槿汐/spriteFrame"},
      // { character: '甄嬛', text: '本想着此处清净，却原来躲得了宫墙，却躲不了人心。' ,spritePath:"dialog_image/甄嬛(甘露寺)/spriteFrame"},
      // { character: '槿汐', text: '小主，人心难测，未来的道路难以预测。但无论如何，奴婢会陪着您，守护您，直到最后。' ,spritePath:"dialog_image/槿汐/spriteFrame"},
      // { character: '浣碧', text: '小主平日心善，她们却如此刻薄！若有机会，以后若能翻身，我定要她们这些坏尼姑吃些苦头！' ,spritePath:"dialog_image/浣碧/spriteFrame"},
      // { character: '甄嬛', text: '你这丫头，越发像小时候那般倔了。隐忍才是我们此刻要做的。' ,spritePath:"dialog_image/甄嬛(甘露寺)/spriteFrame"},
      // { character: 'bg', text: '果郡王带来胧月的画像和宁古塔的书信，甄嬛感激不尽',spritePath:"dialog_image/敬妃/spriteFrame" },
      // { character: '果郡王', text: '嬛儿，本王来晚了，看到你受如此苦，我十分难过！',spritePath:"dialog_image/果郡王/spriteFrame" },
      // { character: '甄嬛', text: '感念王爷还在牵挂我这样一个罪臣之女' ,spritePath:"dialog_image/甄嬛(甘露寺)/spriteFrame"},
      // { character: '果郡王', text: '给你带了礼物。去宫中一趟了，画了胧月，眉眼愈发像你。她若长大，必定是个秀外慧中的女子。还给你带了甄伯父的书信。',spritePath:"dialog_image/果郡王/spriteFrame" },
      // { character: '甄嬛', text: '多谢王爷好意，这对我太珍贵了，无以为报。只是......母女天各一方，不知她可还记得我？父亲母亲身体怎么样了？' ,spritePath:"dialog_image/甄嬛(甘露寺)/spriteFrame"},
      // { character: '果郡王', text: '你不必忧心，敬妃娘娘待她甚是用心，她定会平安长大。然后认你。伯父伯母身体安康。',spritePath:"dialog_image/果郡王/spriteFrame" },
      // { character: '温实初', text: '娘娘，我得知您前几日又被罚去挑水，他们怎能不顾小主身子？才刚生产完，身体虚弱。',spritePath:"dialog_image/温实初/spriteFrame"},
      // { character: '果郡王', text: '温太医尽职尽责，真让人钦佩。不过，娘娘有我在，也不会让她受委屈',spritePath:"dialog_image/果郡王/spriteFrame" },
      // { character: '温实初', text: '王爷此言极是，微臣......微臣谢王爷的仁义。',spritePath:"dialog_image/温实初/spriteFrame"},
      // { character: '果郡王', text: '小王与嬛儿，乃比作是长相思长相守之天籁之合',spritePath:"dialog_image/果郡王/spriteFrame" },
      // { character: '温实初', text: '王爷跟嬛儿如此情投意合，微臣欣慰。',spritePath:"dialog_image/温实初/spriteFrame"},
      // { character: 'bg', text: '几天后',spritePath:"dialog_image/太妃/spriteFrame" },
      // { character: '果郡王', text: '以身相许，以情相依，就算嬛儿想要天上的明月，小王也会一试。',spritePath:"dialog_image/果郡王/spriteFrame" },
      // { character: '甄嬛', text: '允礼，嬛儿早已不再是从前那个纯洁单纯的女子了。你的深情，嬛儿不敢承受。' ,spritePath:"dialog_image/甄嬛(甘露寺)/spriteFrame"},
      // { character: '果郡王', text: '为何不敢？若能与你并肩，这些荣华富贵包括爵位，我都愿舍弃！在天愿作比翼鸟，在地愿为连理枝，嬛儿我们在一起吧。',spritePath:"dialog_image/果郡王/spriteFrame" },
      // { character: '甄嬛', text: '执子之手与子偕老。嬛儿愿意！' ,spritePath:"dialog_image/甄嬛(甘露寺)/spriteFrame"},
      // { character: '果郡王', text: '以后若是有了孩子，咱们便叫灵犀，寓意深远，何如？',spritePath:"dialog_image/果郡王/spriteFrame" },
      // { character: '甄嬛', text: '甚好。嬛儿欢喜。' ,spritePath:"dialog_image/甄嬛(甘露寺)/spriteFrame"},
     ],



//第二场景：熹妃回宫。

[
  { character: '温实初', text: '嬛儿，果郡王死了，我也知你一个人怀孕没有依靠不行的…他坐的船被人动了手脚，应该是跟宫里脱不了干系。',spritePath:"dialog_image/温实初/spriteFrame"},
  { character: '甄嬛', text: '我爱允礼，甘露寺的磨难，我清楚自己为何走到今日。要是没有他，我不会快乐。' ,spritePath:"dialog_image/甄嬛(甘露寺)/spriteFrame"},
  // { character: '温实初', text: '还有甄伯父病危...',spritePath:"dialog_image/温实初/spriteFrame"},
  // { character: '甄嬛', text: '啊！我走到这一步，还有退路吗？那些曾经的欺辱与伤痛，我只当它是磨砺剑锋的利石。我要用那个人的权力，去调查允礼的死因，去救我的家人！' ,spritePath:"dialog_image/甄嬛(甘露寺)/spriteFrame"},
  // { character: '槿汐', text: '是，小主。只愿这剑出鞘之日，能一击必胜。我跟苏培盛关系好，我让他从中斡旋。' ,spritePath:"dialog_image/槿汐/spriteFrame"},
  // { character: '甄嬛', text: '剑锋虽利，还需一步好棋，才能得全局之胜。此刻宫中风云变幻，皇后安插之人也已蠢蠢欲动。我回宫之事，不急于一时。' ,spritePath:"dialog_image/甄嬛(甘露寺)/spriteFrame"},
  // { character: '温实初', text: '嬛儿，我会保护你！',spritePath:"dialog_image/温实初/spriteFrame"},
  // { character: '甄嬛', text: '你就让宫里以为我这个娃是皇上的，给我胎少报一个月。' ,spritePath:"dialog_image/甄嬛(甘露寺)/spriteFrame"},
  // { character: '温实初', text: '好，欺君之罪灭九族，但是我刀山火海在所不辞。',spritePath:"dialog_image/温实初/spriteFrame"},
  // { character: 'bg', text: '皇帝为了给太后祈福来到了甘露寺，顺道打算关照一下甄嬛。',spritePath:"dialog_image/敬妃/spriteFrame" },
  // { character: '皇上', text: '嬛嬛怎么如此清瘦忧愁？',spritePath:"dialog_image/皇上/spriteFrame" },
  // { character: '甄嬛', text: '我肯定是想念四郎太久了。' ,spritePath:"dialog_image/甄嬛(甘露寺)/spriteFrame"},
  // { character: '皇上', text: '咱回宫！给你补偿！赐姓钮祜禄氏，封熹妃！',spritePath:"dialog_image/皇上/spriteFrame" },
  // { character: 'bg', text: '太和殿前，金碧辉煌，万官朝拜，皇帝以及所有妃子在殿前等候熹妃的到来。',spritePath:"dialog_image/敬妃/spriteFrame" },
  // { character: '皇上', text: '辛苦嬛儿了，允礼命大，回来了，就由你主持一下仪式吧',spritePath:"dialog_image/皇上/spriteFrame" },
  // { character: '温实初', text: '....好...',spritePath:"dialog_image/温实初/spriteFrame"},
  // { character: '甄嬛', text: '天子临朝，普天之下，莫非臣民。' ,spritePath:"dialog_image/甄嬛(甘露寺)/spriteFrame"},
  // { character: '皇上', text: '朕很开心，回来就好，回去歇着吧，晚上来陪你。',spritePath:"dialog_image/皇上/spriteFrame" },
  // { character: '甄嬛', text: '臣妾等你' ,spritePath:"dialog_image/甄嬛(甘露寺)/spriteFrame"},
  // { character: 'bg', text: '皇后得知甄嬛回宫的消息跟“安琪拉”团体内部人开会',spritePath:"dialog_image/敬妃/spriteFrame" },
  // { character: '皇后', text: '熹妃？呵，昔日的甄嬛不过是个弃妃，如今居然还能重回后宫？',spritePath:"dialog_image/皇后/spriteFrame"},
  // { character: '祺贵人', text: '娘娘，那个贱人回宫，怕是对您构成威胁。',spritePath:"dialog_image/祺贵人/spriteFrame" },
  // { character: '皇后', text: '她以为回宫便能重掌一切？甘露寺的日子可不是好过的。那种地方出来的人，想必早已失去锐气了。本宫倒要看看，她能翻出什么花来。',spritePath:"dialog_image/皇后/spriteFrame"},
  // { character: '安陵容', text: '皇后娘娘母仪天下，小小甄嬛定是蚂蚁终要被踩死。',spritePath:"dialog_image/安陵容/spriteFrame" },
  // { character: 'bg', text: '永寿宫内，众人歇息。',spritePath:"dialog_image/敬妃/spriteFrame" },
  // { character: '甄嬛', text: '这宫中的恩怨情仇，才刚刚开始' ,spritePath:"dialog_image/甄嬛(甘露寺)/spriteFrame"},
  // { character: '槿汐', text: '娘娘，虽恢复了往日荣光，但人心未必归服。' ,spritePath:"dialog_image/槿汐/spriteFrame"},
  // { character: '甄嬛', text: '槿汐，你且等着看。我这一招棋，必定会让那些自以为高高在上的人付出代价。' ,spritePath:"dialog_image/甄嬛(甘露寺)/spriteFrame"},
  // { character: 'bg', text: '如今的甄嬛，已是一把真正的复仇利剑。皇帝不一会来了..',spritePath:"dialog_image/敬妃/spriteFrame" },
  // { character: '皇上', text: '嬛嬛，你终于回来了。朕等了好久',spritePath:"dialog_image/皇上/spriteFrame" },
  // { character: '甄嬛', text: '臣妾叩见皇上。甘露寺的清修让臣妾心境略有平复，但终究无法割舍对皇上的一片忠诚，遂听从旨意，回宫侍奉皇上。' ,spritePath:"dialog_image/甄嬛(甘露寺)/spriteFrame"},
  // { character: '皇上', text: '朕本以为，经过这些年的分离，你会恨朕。',spritePath:"dialog_image/皇上/spriteFrame" }, 
  // { character: '甄嬛', text: '恨与爱，都太过沉重。臣妾已经放下，只求能尽臣妾之力，陪伴皇上，不再辜负昔日的情意。' ,spritePath:"dialog_image/甄嬛(甘露寺)/spriteFrame"},
  // { character: '皇上', text: '如此甚好。甄嬛，朕也希望，我们能重新开始。',spritePath:"dialog_image/皇上/spriteFrame" }, 
  // { character: '甄嬛', text: '臣妾定会竭尽全力，不让皇上失望。暗自思忖：“重新开始？皇上，您欠我的，还远未偿还。”' ,spritePath:"dialog_image/甄嬛(甘露寺)/spriteFrame"},
  // { character: 'bg', text: '恭喜玩家，甘露寺剧情通关！！！',spritePath:"dialog_image/敬妃/spriteFrame" },
 ],

//第三场景：滴血认亲一
  [
    { character: '祺贵人', text: '臣妾要告发熹贵妃私通，秽乱后宫，罪不容诛',spritePath:"dialog_image/祺贵人/spriteFrame" },
    { character: '皇后', text: '宫规森严，祺贵人不得信口雌黄' ,spritePath:"dialog_image/皇后/spriteFrame"},
    // { character: '祺贵人', text: '臣妾以瓜尔佳氏一族起誓，若有半句虚言，全族无后而终',spritePath:"dialog_image/祺贵人/spriteFrame" },
    // { character: '皇后', text: '你既说熹贵妃私通，那奸夫是谁啊' ,spritePath:"dialog_image/皇后/spriteFrame"},
    // { character: '祺贵人', text: '太医温实初',spritePath:"dialog_image/祺贵人/spriteFrame" },
    // { character: '敬妃', text: '有何证据吗',spritePath:"dialog_image/敬妃/spriteFrame" },
    // { character: '祺贵人', text: '臣妾当然有凭证，永寿宫的小宫女斐雯就见过',spritePath:"dialog_image/祺贵人/spriteFrame" },
    // { character: '斐雯', text: '那日娘娘和温太医说话，奴婢陪着二小姐进去，谁知就看见温太医的手拉着娘娘的手，温太医一看见奴婢和二小姐进来，慌忙地撤了手，奴婢还瞧见温太医衣袖口子上，翻出来一截，绣了一朵小小的五瓣竹叶，此后奴婢越想越害怕，怕娘娘来日知道奴婢看见了，要杀奴婢灭口，只好乞求祺贵人作主',spritePath:"dialog_image/斐雯/spriteFrame" },
    // { character: 'bg', text: '甄嬛心中波涛汹涌，斐雯的背叛像一把尖刀，深深地刺进了她的心脏。这个曾经看似忠诚的宫女，竟然为了自己的私利，造谣说她和温太医有私情。甄嬛握紧了拳头，她知道，她需要冷静下来，找到证明自己清白的方法。无论如何，都不能让阴谋得逞。她要以事实和理智，揭露斐雯的真面目。',spritePath:"dialog_image/太妃/spriteFrame" },
    // { character: '甄嬛', text: '容臣妾问她几句话（向皇后）斐雯，好歹主仆一场，今日你既来揭发本宫，想必也是知道是最后一遭伺候本宫了，自己分内之事也该做好。我问你，你出来前，可把正殿紫檀桌上的琉璃花樽给擦拭干净了' ,spritePath:"dialog_image/甄嬛/spriteFrame"},
    // { character: '斐雯', text: '已经擦了',spritePath:"dialog_image/斐雯/spriteFrame" },
    // { character: '槿汐', text: '胡言乱语，娘娘的紫檀桌上何曾有琉璃花樽，那分明是青玉的' ,spritePath:"dialog_image/槿汐/spriteFrame"},
    // { character: '斐雯', text: '是奴婢记错了，是青玉花樽',spritePath:"dialog_image/斐雯/spriteFrame" },
    // { character: '甄嬛', text: '正殿紫檀桌上从未放过什么琉璃花樽，你伺候本宫，不把心思放在正经事上，倒日日留心哪位太医的手搭了本宫的手，翻出来的袖口上绣了什么花样，这些情景旁人是看都不敢看，为何你连枝叶末节都这般留意，如此居心，实在可疑',spritePath:"dialog_image/甄嬛/spriteFrame" },
    // { character: '苏培盛', text: '皇上驾到',spritePath:"dialog_image/苏培盛/spriteFrame" },
    // { character: '皇上', text: '说吧，出了什么事，这么乱哄哄的',spritePath:"dialog_image/皇上/spriteFrame" },
    // { character: '祺贵人', text: '臣妾要告发熹贵妃私通，秽乱后宫',spritePath:"dialog_image/祺贵人/spriteFrame"},
    // { character: '皇上', text: '贱人，胡说',spritePath:"dialog_image/皇上/spriteFrame"},
    // { character: '祺贵人', text: '臣妾有凭证证实，熹贵妃与温实初私通，熹贵妃出宫后，温实初屡屡入甘露寺探望，孤男寡女常常共处一室，皇上若不信，大可传甘露寺姑子细问，此刻人已在宫中',spritePath:"dialog_image/祺贵人/spriteFrame" },
    // { character: '净白', text: '是，熹贵妃娘娘初来甘露寺时，素不理睬众人，那时宫中有一位姓温的太医常来探望，贫尼有几次经过娘娘的住处，见白日里娘娘的房门也掩着，而两个侍女都守在外头，贫尼当时看着深觉不妥，想劝解几句，反倒给骂了回来。后来为避寺中流言，熹贵妃称病搬离甘露寺，独自住在凌云峰，从此之后贫尼便不得而知了',spritePath:"dialog_image/净白/spriteFrame" },
    // { character: '祺贵人', text: '熹贵妃是有孕回宫，皇上不便时时去看望熹贵妃，按净白师父所说，倒是温太医来往频繁，那么熹贵妃这胎',spritePath:"dialog_image/祺贵人/spriteFrame"},
    // { character: '温实初', text: '祺贵人言下之意是说皇子和公主并非龙裔，事关江山社稷，祺贵人怎么可以胡乱猜测，皇上万万不能听祺贵人的揣测啊，皇上',spritePath:"dialog_image/温实初/spriteFrame"},
    // { character: '皇后', text: '六阿哥是皇上的血脉，皇上更对他寄予厚望，事关千秋万代，实在不能不仔细啊',spritePath:"dialog_image/皇后/spriteFrame" },
    // { character: '皇上', text: '那你说，怎么样才叫仔细',spritePath:"dialog_image/皇上/spriteFrame" },
    // { character: '皇后', text: '只怕要滴血验亲',spritePath:"dialog_image/皇后/spriteFrame" },
    // { character: '安陵容', text: '安嫔：臣妾听说，便是将二人的血刺在同一器皿之内，看是否融为一体，若融为一体即为亲，否则便是没有血缘之亲',spritePath:"dialog_image/安陵容/spriteFrame" },
    // { character: '皇上', text: '嬛嬛，只要一试 朕便可还你和孩子一个清白',spritePath:"dialog_image/皇上/spriteFrame" },
  ],  

//第四场景：滴血认亲二
  [
    { character: '皇上', text: '苏培盛，去把六阿哥抱来，皇后你去准备滴血验亲的东西',spritePath:"dialog_image/皇上/spriteFrame" },
    { character: '苏培盛', text: '嗻',spritePath:"dialog_image/苏培盛/spriteFrame" },
    // { character: '皇后', text: '是',spritePath:"dialog_image/皇后/spriteFrame"},
    // { character: 'bg', text: '（刺了六阿哥和温实初，皇上起身走到碗前）（皇上气极，大怒一声，猛甩佛珠）',spritePath:"dialog_image/太妃/spriteFrame" },
    // { character: '皇后', text: '大胆甄嬛，还不跪下',spritePath:"dialog_image/皇后/spriteFrame"},
    // { character: '甄嬛', text: '臣妾无错，为何要跪' ,spritePath:"dialog_image/甄嬛/spriteFrame"},
    // { character: '皇后', text: '血相溶者即为亲，你还有什么可辩驳，来人，剥去她的贵妃服制，打入冷宫，温实初即刻杖杀',spritePath:"dialog_image/皇后/spriteFrame"},
    // { character: '甄嬛', text: '谁敢' ,spritePath:"dialog_image/甄嬛/spriteFrame"},
    // { character: '皇上', text: '朕待你不薄，你为何要如此待朕。你太叫朕失望了......你自己看',spritePath:"dialog_image/皇上/spriteFrame" },
    // { character: 'bg', text: '在这一刻，甄嬛的心跳如雷鸣般响彻耳畔，但她强迫自己保持镇定。她深知，一旦表现出丝毫的慌乱，就等于承认了自己的罪行。她盯着碗中的水，心中迅速盘算着对策。这水有问题，她几乎立刻就意识到了这一点。如果这水真的被做了手脚，那么无论谁的血滴进去，都会相溶。她必须尽快找到证据，否则自己和弘曕的清白将永远无法洗刷，她不能让那些躲在暗处的敌人得逞',spritePath:"dialog_image/太妃/spriteFrame" },
    // { character: '甄嬛', text: '她迅速拉过苏培盛的手，果断地扎了一针，将他的血滴入碗中。果然，血水相溶。她的心中稍稍松了一口气。',spritePath:"dialog_image/甄嬛/spriteFrame" },
    // { character: '甄嬛', text: '大呼这水有问题，任何人的血滴进去都能相融，皇上你来看，皇上' ,spritePath:"dialog_image/甄嬛/spriteFrame"},
    // { character: '崔槿汐', text: '（也滴了一滴自己的血），这水有问题，皇上，这水有问题，是有人做过手脚的，娘娘是清白的，皇上' ,spritePath:"dialog_image/甄嬛/spriteFrame"},
    // { character: '苏培盛', text: '皇上，这不可能的，奴才没有生育的能力，温太医与槿汐怎么可能是奴才的孩子',spritePath:"dialog_image/苏培盛/spriteFrame" },
    // { character: '皇上', text: '哈哈，朕知道',spritePath:"dialog_image/皇上/spriteFrame" },
    // { character: '温实初', text: '(用手指沾的尝了一下碗中水)皇上，此水有酸涩的味道，是加了白矾的缘故，医书古籍上有注，若以白矾置于水中，虽非亲生父子也可以相溶；若以清油置于水中，虽为亲生父子也不可以相融啊，皇上',spritePath:"dialog_image/温实初/spriteFrame"},
    // { character: '皇上', text: '刚才为公允起见，是皇后亲自准备的水',spritePath:"dialog_image/皇上/spriteFrame" },
    // { character: '皇后', text: '臣妾准备的水绝没问题',spritePath:"dialog_image/皇后/spriteFrame"},
    // { character: '苏培盛', text: '皇上，奴才去换了一碗干净的水，这碗水绝对没有问题',spritePath:"dialog_image/苏培盛/spriteFrame" },
    // { character: '皇上', text: '再验',spritePath:"dialog_image/皇上/spriteFrame" },
    // { character: '苏培盛', text: '皇上，请看',spritePath:"dialog_image/苏培盛/spriteFrame" },
    // { character: '甄嬛', text: '皇上验过，疑心尽可消了吧' ,spritePath:"dialog_image/甄嬛/spriteFrame"},
    // { character: '皇上', text: '嬛嬛，朕错怪你了，朕不再有疑心',spritePath:"dialog_image/皇上/spriteFrame" },
    // { character: '甄嬛', text: '臣妾此身从此分明了' ,spritePath:"dialog_image/甄嬛/spriteFrame"},
    // { character: '皇上', text: '祺贵人，事到至此，你还有什么要说的，祺贵人，瓜尔佳氏，危言耸听，扰乱宫闱，打入冷宫，其余的交给熹贵妃处置',spritePath:"dialog_image/皇上/spriteFrame" },
    // { character: '甄嬛', text: '斐雯，净白，杖毙' ,spritePath:"dialog_image/甄嬛/spriteFrame"},
    // { character: 'bg', text: '在深宫大院的重重帷幔之后，滴血认亲的仪式落下帷幕。甄嬛望向窗外，眼神中交织着释然、悲伤和对未来的希望。然而，宫廷中的风云变幻无常，权力的争夺从未停止。为了给她的孩子铺就一条安全且光明的道路，甄嬛不得不采取更为决绝的手段。凭借着过人的智慧和隐忍多时的机会，她巧妙地布局，将皇后斗倒。而对于皇帝，尽管心中充满复杂的情感，为了自己和孩子的未来，她最终选择用毒结束了皇帝的生命。这一切都在悄无声息中完成，没有公开的揭露，只有冷酷的现实。而四阿哥，在这风云变幻之中，登上了皇位。甄嬛站在新帝身旁，成为了圣母皇太后，成为这个国家背后最强大的力量',spritePath:"dialog_image/甄嬛/spriteFrame" },
 
  ],
];




  public static get_level_data(lvl:number){//获取我们所需要的关卡
    for(let ele of GaneState.level )   //遍历关卡数据 返回所需关卡数据
    {
      if(ele.level==lvl)
      {
        return ele;    
      }
    }
    return null;
  }
  

  public static get_max_level(lvl:number){
    //获取最大的关卡
    let max:number=0;
    for(let ele of GaneState.level )
    {
      if(ele.level>max)
      {
        max=ele.level;
      }
    }
      return max;
  }

  public  static get_cur_level(){
return this.cur_level;
  }

}


