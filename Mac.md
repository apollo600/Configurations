# 安装列表

1.   Clash for Windows

     1.   各个平台 `v0.20.39` 的安装包，放到 icloud 云盘里了
     2.   设置代理规则，参见 [paser.txt](./parser.txt)
     3.   感觉 `v0.18.8` 的 UI 挺好看的

2.   iTerm2, 目前的配置并不算多,主要是字体、背景之类的

     1.   维护配置文件 [配置文件夹](./iTerm2-config)
          1.   最近更新，2024-5-9
          2.   包含两个配置文件
               -   默认配置文件
               -   录屏配置文件

     2.   需要配置 Nerd Font [Nerd Fonts - Iconic font aggregator, glyphs/icons collection, & fonts patcher](https://www.nerdfonts.com/font-downloads), 目前使用的是 CodeNewRoman Nerd Font, 也可以使用 FiraCode Nerd Font
     3.   背景图源文件

     <img src="https://gitee.com/sekiro_meng/images/raw/master/mac-air/2024/2024-05-09/2024-05-09T20:51:08.jpg" alt="hacg.me_60" style="zoom:21%;" />

3.   Homebrew, mac 上很好用的安装器 [官网](brew.sh)

     1.   brew 安装旧版本很麻烦，这有一个还可以的[教程](https://shockerli.net/post/homebrew-install-formula-specific-version/)，方法三
     2.   换源方法，其实就是 `cd $(brew --prefix)`，然后设置仓库的远程链接；`BOTTLE_DOMAIN` 需要在环境变量中设置

     ```
     # 修改 brew.git 为阿里源
     # 如果可以走代理，可以不换源
     $ git -C "$(brew --repo)" remote set-url origin https://mirrors.aliyun.com/homebrew/brew.git
     
     # zsh 替换 brew bintray 镜像
     $ echo 'export HOMEBREW_BOTTLE_DOMAIN=https://mirrors.aliyun.com/homebrew/homebrew-bottles' >> ~/.zshrc
     $ source ~/.zshrc
     
     # 刷新源
     $ brew update
     ```

4.   Starship, 用于增强命令行的提示, 直接用 brew 安装就好 [Starship](https://starship.rs/zh-CN/guide/#🚀-安装)

     1.   [macos - How to disable the "AppleRawMaxCapacity" warning in mac terminal - Stack Overflow](https://stackoverflow.com/questions/77222467/how-to-disable-the-applerawmaxcapacity-warning-in-mac-terminal)

5.   chrome 浏览器

6.   Nead Download Manager

     1.   安装插件
     2.   配置代理

7.   Typora

8.   Doppler, 本地音乐播放器, [cracked]

9.   Zotero 7, 论文阅读

10.   Office, [cracked]

11.   Clean My Max X, [cracked]

12.   腾讯会议

13.   坚果云

14.   ==NTFS for Mac==, 有时候突然就可以访问了，最好能搞一个破解的/开源的软件

15.   Logi Options+/Logi Hub，根据电脑使用的设备类型决定

16.   Xmind, [cracked]

17.   CotEditor, 类似于记事本的编辑器

18.   VS Code

19.   UPDF

20.   Maccy, 剪贴板管理器

      1.   设置“自动粘贴”

21.   iBar, [cracked]

22.   网易邮箱大师

23.   Kap，录屏+录Gif

24.   qq

      1.   配置文件保存路径, `~/Documents/qq接收文件`

25.   微信

      1.   设置小于一定大小自动保存文件

26.   VNC Viewer, 用于远程控制转发界面

27.   PicGo, 图床组建

      1.   安装 npm 和 node.js, `brew install node`

      2.   安装 picgo-core, `npm install picgo -g`

      3.   安装 gitee-uploader

           ```
           npm install picgo-plugin-gitee-uploader -g
           ```

      4.   安装 super-prefix

           ```
           git clone --depth=1 git@github.com:apollo600/picgo-plugin-super-prefix.git
           cd picgo-plugin-super-prefix
           npm install
           npm run build
           cp -r ../picgo-plugin-super-prefix ~/.picgo/
           cd ~/.picgo
           npm install ./picgo-plugin-super-prefix
           ```

           或者如果我的 PR 被合并并且这个插件已经更新到了 1.2.3+

           ```
           npm install picgo-plugin-super-prefix -g
           ```

      5.   配置图床

           ```
           picgo config uploader
           # 路径: 主机名称
           ```

      6.   配置 super-prefix

           ```
           picgo config plugin
           # 选择 super-prefix
           # dir: YYYY/YYYY-MM-DD/
           # file: YYYY-MM-DDTHH:mm:ss
           picgo use plugins
           # 选择 super-prefix
           ```

28.   Lunar, 调整显示器亮度

29.   ShadowsocksX-NG，用于配置骥恺师兄的VPN

30.   iStat Menus, [cracked]，用于查看机器的各个参数，比如温度，CPU占用，内存占用情况

31.   Loopback，用于声音本地回环，可以在录屏的时候录下系统的声音，输入设备需要选择 Loopback Audio，这是一个虚拟出来的扬声器

      1.   优化 Marshall Mini 体验

           ![image-20241112234443684](https://gitee.com/sekiro_meng/images/raw/master/mac-air/2024/2024-11-12/2024-11-12T23:44:44.png)

32.   网易云音乐，下载 3.0 版本以上的，解决了内存泄漏问题

33.   EasyConnect

      1.   计算所 VPN
           1.   服务器地址：vpn.ict.ac.cn
           2.   账号：gz_mengxiangyu
           3.   证书：放在 icloud 了

34.   TeamViewer，用于远程控制

35.   Telegram，电报

36.   OnyX，一个高级配置 Mac 的软件，有需要可以试试

37.   BlackMagic Disk Speed Test，用于测试磁盘访问速度, [cracked]

38.   zoom，开会用

39.   ShortcutDetective，检测哪个软件在使用哪个快捷键，很好用

      ![image-20240509212116977](https://gitee.com/sekiro_meng/images/raw/master/mac-air/2024/2024-05-09/2024-05-09T21:21:17.png)

40.   Elmedia Player，视频播放软件，可以解析 `.mov` 格式，总之比较好用, [cracked]

      1.   暂停的时候支持按帧移动，如果不需要可以在设置里关掉这个选项
      2.   可以调整字幕延迟、音频延迟

41.   IINA，一个开源的小而美播放器，特点是支持 `.sup` 字幕

42.   Goodnotes 5，电脑上可以不安装，反正买了

43.   MarginNote 3，也买了

44.   Discord，有些群会这上面，也是即时通讯软件

45.   ~~Gopeed，磁力链接下载/种子下载器~~

46.   迅雷 5.40.2，别下载 6.0 版本的，感觉比 Gopeed 好用，Gopeed 在获取磁力链接的时候支持的资源很少

47.   Adobe Photoshop，就在网上找吧，装这个比较麻烦，需要先安装 Adobe Creative Cloud

48.   Termius，使用界面进行 SCP

49.   Snipaste，截屏软件

50.   Magnet，分屏软件

51.   Parallel Desktop，虚拟机，[cracked]

52.   ~~Docker，容器~~

53.   OrbStack，Docker 的替代后端，前段的 Cli 操作是一致的

54.   剪映，视频剪辑

55.   Flux，可以安装，会在快睡觉的时候提醒你，还会在晚上把屏幕色温调低

56.   Caffinated，防止休眠的软件

      <img src="https://gitee.com/sekiro_meng/images/raw/master/mac-air/2024/2024-11-12/2024-11-12T23:56:06.png" alt="image-20241112235605885" style="zoom:50%;" />

57.   Trace，可以记录开启后各个应用的使用时长，还挺好用的，可以减少切换其他应用的次数

58.   Deskreen，有局域网的情况下，可以几乎无延迟共享屏幕到任何设备上（只要有浏览器）

59.   Textsnipper，精度较高的 OCR 识别软件，[cracked]

60.   Popclip，提供了一些鼠标划词后的操作，比如翻译之类的

61.   Command X，没错，Mac 不支持剪切文件这个操作，不过下载这个软件之后就可以了

      1.   需要把它的图标从 bar 里面拖出来，不然会经常自动退出

62.   爱思助手，从手机上拷贝照片什么的

63.   AltTab，减少从 Windows 过来的不适应，苹果会把一个应用的多个窗口合并成一个窗口，有点不方便

      1.   控制
           1.   最小化窗口：隐藏
           2.   设置快捷键：Command + Tab
           3.   窗口选择方式：框选“鼠标悬停”
      2.   外观
           
           ![image-20240922235435443](https://gitee.com/sekiro_meng/images/raw/master/mac-air/2024/2024-09-22/2024-09-22T23:54:36.png)

64.   飞书

65.   Mos，最基础的功能是反转鼠标滚动方向，还可以调节灵敏度等功能，[cracked]

66.   bandzip，压缩/解压

67.   [cmd 年度报告](https://github.com/YiNNx/cmd-wrapped)

      <img src="https://private-user-images.githubusercontent.com/86649490/363509520-fa34598f-3b8c-4f90-8569-7724df787b1c.gif?jwt=eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJnaXRodWIuY29tIiwiYXVkIjoicmF3LmdpdGh1YnVzZXJjb250ZW50LmNvbSIsImtleSI6ImtleTUiLCJleHAiOjE3MzE0Mjc0ODksIm5iZiI6MTczMTQyNzE4OSwicGF0aCI6Ii84NjY0OTQ5MC8zNjM1MDk1MjAtZmEzNDU5OGYtM2I4Yy00ZjkwLTg1NjktNzcyNGRmNzg3YjFjLmdpZj9YLUFtei1BbGdvcml0aG09QVdTNC1ITUFDLVNIQTI1NiZYLUFtei1DcmVkZW50aWFsPUFLSUFWQ09EWUxTQTUzUFFLNFpBJTJGMjAyNDExMTIlMkZ1cy1lYXN0LTElMkZzMyUyRmF3czRfcmVxdWVzdCZYLUFtei1EYXRlPTIwMjQxMTEyVDE1NTk0OVomWC1BbXotRXhwaXJlcz0zMDAmWC1BbXotU2lnbmF0dXJlPTBkNjgxZWFlMzU3MDE3M2E5NDY1NjhiYTg0NzA1YTE2ZjEzYjNmODFjM2M3NDkwYzJjNTkyMDEwYjFmZjZkMGImWC1BbXotU2lnbmVkSGVhZGVycz1ob3N0In0.iYkw7YU1VQMJ0Z1jrRepLOnzbUiETzyFC9YkaWbzh88" style="zoom:50%;" />

68.   chsrc

      1.   专业的事情交给专业的人做

      2.   感觉 homebrew 换源比我自己换的好用

      3.   ```sh
           # arm64/aarch64
           curl -L https://gitee.com/RubyMetric/chsrc/releases/download/pre/chsrc-aarch64-macos -o chsrc; chmod +x ./chsrc
           
           # x64
           curl -L https://gitee.com/RubyMetric/chsrc/releases/download/pre/chsrc-x64-macos -o chsrc; chmod +x ./chsrc
           ```

      4.   [manual](https://github.com/RubyMetric/chsrc)

69.   [delta - git 美化工具](https://github.com/dandavison/delta)

      1.   需要在 `~/.gitconfig` 中添加

      2.   ```
           [core]
               pager = delta
           
           [interactive]
               diffFilter = delta --color-only
           
           [delta]
               navigate = true    # use n and N to move between diff sections
               side-by-side = true
               line-numbers = true
           
               # delta detects terminal colors automatically; set one of these to disable auto-detection
               # dark = true
               # light = true
           
           [merge]
               conflictstyle = zdiff3
           ```

70.   [dust](https://github.com/bootandy/dust)，更直观的 du 工具

71.   [icloud_photos_downloader](https://github.com/icloud-photos-downloader/icloud_photos_downloader)，感觉是老哥自己想把 icloud 照片都下载下来，然后就写了个小工具，然后别人发现了完善一下，现在就是一个比较成熟的小工具了

      1.   ```sh
           icloudpd --directory <save_dir> --username 1356464784@qq.com --domain cn
           ```

      2.   `--watch-with-interval=<time>`，如果一直挂着这个脚本，它会隔一段时间检查有没有新的文件，然后下载下来

72.   鲜艺 AI 抠图，一个大模型的套壳工具，如果默认结果不满意，可以手动修复（导入 PS）

73.   百度网盘

74.   夸克网盘

75.   阿里云盘

76.   RustDesk，用来远程控制，局域网功能挺好用的

77.   Rnote，一个电脑上的开源手写软件，买了数位板可以用

78.   Downie 4，很好用，用来下载视频，b 站，youtube，连小红书都能下

79.   ArchiveWeb，挺好用的，把网页的内容捕捉下来，变成静态网页
