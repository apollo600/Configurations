#### Clash for Windows

点此 [链接](https://cvws.icloud-content.com.cn/B/ATshbYEcv21gjNnD4u5cr1O6maJRAR5JQxS8bfSPABoYu8VkjfjNjtZZ/Clash.for.Windows.Setup.0.20.30.exe?o=Agm700DMrGqZUjc39A6q6I54UGRcAKhzQUJ46V3nHKCI&v=1&x=3&a=CAogcC54mq0_Zw9kJU9aDM8jKXnAET_mi5rbFqepUpaqRuUSbxD24cGqmzEY9r6drJsxIgEAUgS6maJRWgTNjtZZaictwL2db8X-TrinqwW14kEnXIzBS_jgIKXgkMwD0fCG4XXKtZaN8J1yJzOuKgzrpuESmSZKRNKlZzpRlH6GWdbw5JwCXmx2QF5P-bj0Lof3og&e=1690967695&fl=&r=70397232-3b5d-4b14-8be6-bf16a760a1ec-1&k=RszffMfYEKD2mpb3ggpuDQ&ckc=com.apple.clouddocs&ckz=com.apple.CloudDocs&p=220&s=6wVIE6HP8cXoYB5sTo4Ib0u683Q) 下载（iCloud备份）

或从其他设备拷贝

#### MSYS2

让Win和UNIX协同的神器

[MSYS2](https://www.msys2.org/)

[MSYS2 Packages](https://packages.msys2.org/queue)

配置参见 [具体配置](MSYS2.md)

#### Windows Terminal

从Windows应用商店安装

更好看的Windows终端

#### WinGet

从Windows应用商店安装

用于安装依赖注册表的软件/更新

> 破解版软件除外

#### Clavier+

用于进行快捷键自定义

例如`Ctrl + Alt + T`打开`zsh`程序

#### oh-my-zsh

主页：[ohmyzsh/ohmyzsh](https://github.com/ohmyzsh/ohmyzsh)

配置文件：[.zshrc](.zshrc)

主题浏览：[Themes · ohmyzsh/ohmyzsh Wiki (github.com)](https://github.com/ohmyzsh/ohmyzsh/wiki/Themes)

#### TranslucentTB

从应用商店安装

用于美化任务栏，使其透明或有其他效果

#### Twinkle Tray

从应用商店安装

用于调整显示器亮度

#### PicGo

用于支持Markdown图床

具体配置见[PicGo配置](PicGo.txt)

#### Bandizip

[Windows 版本的 Bandizip · 业内领先的压缩文件解决方案 (bandisoft.com)](https://www.bandisoft.com/bandizip/)

用于压缩/解压缩

#### Zotero

文献阅读+管理，使用坚果云WebDAV进行同步文献

https://www.zotero.org/

具体见 [Zotero配置](Zotero.md)

#### VS Code

代码编辑器

https://code.visualstudio.com/

设置通过Github账号同步

#### 其他

- [ ] Discord
- [ ] Everything
- [ ] Git
- [ ] Logi Options+
- [ ] 网易邮箱大师
- [ ] Microsoft Office 专业增强版 2021
- [ ] PowerToys
- [ ] Miniconda3
- [ ] NVIDIA显卡驱动+CUDA
- [ ] 坚果云
- [ ] 向日葵
- [ ] 腾讯会议
- [ ] Neat Download Manager
- [ ] 滴答清单
- [ ] Typora
- [ ] QQ
- [ ] 微信
- [ ] 网易云音乐
- [ ] 火绒安全

#### 问题解决

##### #1 Windows安全中心内核隔离出现不兼容的驱动程序

![image-20230803033542499](https://raw.githubusercontent.com/apollo600/images/main/win11/202308030335551.png?token=AQJ63I7G2FXKMFCWFH3BPWTEZKYEW)

首先查看不兼容的驱动程序，然后查看对应的发布名称 (*.inf)

![image-20230803033633948](https://raw.githubusercontent.com/apollo600/images/main/win11/202308030336984.png?token=AQJ63I42CIMXLNPROG4VWSTEZKYH6)

进入到设备管理器 (控制面板)，选择查看->按照驱动程序列出设备

![image-20230803033721897](https://raw.githubusercontent.com/apollo600/images/main/win11/202308030337931.png?token=AQJ63IZWOG2VP3JVCZYK3LTEZKYK6)

然后删除对应的驱动程序即可

![image-20230803033745586](https://raw.githubusercontent.com/apollo600/images/main/win11/202308030337677.png?token=AQJ63I7EPRIZRWPJAERXKX3EZKYMS)

问题解决

![image-20230803034025362](https://raw.githubusercontent.com/apollo600/images/main/win11/202308030340393.png?token=AQJ63I2WHKJS2RXFJ7RARMLEZKYWM)
