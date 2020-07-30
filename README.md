# mcu_framework

#### 介绍
这个项目是为了搭建一个mcu工程的架构，让所有的mcu开发都可以在这一个工程上进行，原先构想的架构如下图，现在先做一个简单点的。
![输入图片说明](https://images.gitee.com/uploads/images/2020/0730/110303_238a5e65_1625193.png "屏幕截图.png")
各目录的功能如下：
components：组件，包括lwip，ucgui，rtos，芯片驱动等，这些和平台无平，不管是什么mcu，只要启用即可。
project：工程，实际业务，一个目录代表一个工程。
tool：编译链等工具。
vendor：厂商库等文件，根据所选用的mcu启用相应的支持包。
build.sh：编译脚本。

#### 使用说明
下载代码后，直接"./build.sh 工程名"，比如"./build.sh lwip_test"

#### 参与贡献

1.  Fork 本仓库
2.  新建 Feat_xxx 分支
3.  提交代码
4.  新建 Pull Request

