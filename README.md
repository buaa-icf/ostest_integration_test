# ostest_integration_test

#### 介绍
集成测试仓用于统一规划、开发、管理操作系统产品化的场景、功能、性能、稳定性、安全性等测试用例。

集成测试仓在整体目录结构中的位置如下图：

![test_dir](figures/test_dir.png)

集成测试在测试内容组成中的位置如下图所示：

![test_content](figures/test_content.png)

已开发的内容：
1. 通过模拟用户使用场景开发测试的应用，例如：音乐、购物、办公等测试应用；
2. ArkUI组件一致性测试Benchmark；
3. ArkTS编译器性能测试Benchmark；


#### 目录结构
```
├── figures		            //readme 图片资源
├── performance	            //性能测试目录
│       └── arkts	           //模块
|               └── benchmark	 //编译器Benchmark用例 
│       └── arkui	           //模块
|               └── benchMark	 //组件BenchMark用例
├── scenario               //用户场景测试应用
│       └── arkui	           //模块
│               └── MyMap	   //地图测试hap
│               └── MyMusic	   //音乐测试hap
│               └── MyNews	   //新闻测试hap
│               └── MyShopping     //购物测试hap
│               └── MyWps	   //办公测试hap
└── ...  		           //其他测试类型
└── release  		           //测试用例版本发布
└── readme                 //说明文档
```

#### 编码规范

1.  代码规范
2.  工程结构规范
3.  README编写规范
4.  用例设计规范

#### 使用说明

参考各子模块使用说明

#### 参与贡献

可以参与共建的方向：
1.  黑盒功能测试:WIFI、蓝牙、音频、视频等;
2.  行业场景测试：金融、PC、车机等;
3.  专项工具：应用安全性、应用性能等;
有任何关于本仓的想法和问题请联系管理员或者提issue问题单。

共建操作步骤：
1.  Fork 本仓库
2.  新建 Feat_xxx 分支
3.  提交代码
4.  新建 Pull Request
