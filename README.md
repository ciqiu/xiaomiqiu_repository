# xiaomiqiu_repository

#### 介绍
小米球官方网站：
<br>
https://www.xiaomiqiu.cn/
<br>
https://manager.xiaomiqiu.com/

小米球交流群：
~~①群:150134730(已满)~~
~~②群:150134648(已满)~~
[③群:745317268(未满)](https://qm.qq.com/q/8s8q4r13yg)

#### 客户端下载

1、右侧下载发行版处下载。

2、克隆整个仓库下载。

3、点击下方的直链下载。

Mac客户端
<br>
[darwin_amd64](https://gitee.com/ciqiu/xiaomiqiu_repository/raw/master/darwin_amd64/xiaomiqiu)
<br>
[darwin_arm64](https://gitee.com/ciqiu/xiaomiqiu_repository/raw/master/darwin_arm64/xiaomiqiu)

Linux客户端
<br>
[linux 32位](https://gitee.com/ciqiu/xiaomiqiu_repository/raw/master/linux_386/xiaomiqiu)
<br>
[linux 64位](https://gitee.com/ciqiu/xiaomiqiu_repository/raw/master/linux_amd64/xiaomiqiu)
<br>
[linux arm版本](https://gitee.com/ciqiu/xiaomiqiu_repository/raw/master/linux_arm64/xiaomiqiu)
<br>
[linux armv7](https://gitee.com/ciqiu/xiaomiqiu_repository/raw/master/linux_armv7/xiaomiqiu)
<br>
[linux mips](https://gitee.com/ciqiu/xiaomiqiu_repository/raw/master/linux_mips/xiaomiqiu)
<br>

Windows客户端
<br>
[windows 32位](https://gitee.com/ciqiu/xiaomiqiu_repository/raw/master/windows_386/xiaomiqiu.exe)
<br>
[windows 64位](https://gitee.com/ciqiu/xiaomiqiu_repository/raw/master/windows_amd64/xiaomiqiu.exe)
<br>

参考配置文件
<br>
[xiaomiqiu.conf](https://gitee.com/ciqiu/xiaomiqiu_repository/raw/master/xiaomiqiu.conf)



#### 其它说明

1、关于配置问题请参看xiaomiqiu.conf文件！

2、配置文件参数小解：

	auth_token：用户连接小米球Ngrok的唯一Token,需要到https://manager.xiaomiqiu.com/ 注册获得;

	server_addr: 服务器连接地址，如ngtest.guyubao.com:5432

	log-level: 错误日志等级，错误等级 (default "error")

	log: 日志输出方式，可选项为stdout与file,默认为file。如果想要程序在后台运行，要将log设置为stdout (default "file")。

3、更多参数详情，可以通过运行"xiaomiqiu --help"命令查看帮助。

4、快速启动脚本，windows系统请用"小米球一键启动工具.bat",其它系统请用"xiaomiqiu_start.sh"。

5、darwin版本就是mac版本。

如果打开xiaomiqiu.conf发现格式是乱的，请尝试用其他
文本工具(如:Editplus、Notepad++)打开试试!
