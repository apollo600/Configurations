# 安装列表

1.   Clash for Windows

     1.   各个平台 `v0.20.39` 的安装包，放到 icloud 云盘里了
     2.   设置代理规则，参见 [paser.toml](./parser.toml)

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

30.   Proxifier, [cracked]

31.   iStat Menus, [cracked]，用于查看机器的各个参数，比如温度，CPU占用，内存占用情况

32.   Loopback，用于声音本地回环，可以在录屏的时候录下系统的声音，输入设备需要选择 Loopback Audio，这是一个虚拟出来的扬声器

33.   YesPalyMusic，一个开源的网易云音乐前端，比较好用

34.   EasyConnect

      1.   计算所 VPN
           1.   服务器地址：vpn.ict.ac.cn
           2.   账号：gz_mengxiangyu
           3.   证书：放在 icloud 了

35.   TeamViewer，用于远程控制

36.   Telegram，电报

37.   OnyX，一个高级配置 Mac 的软件，有需要可以试试

38.   BlackMagic Disk Speed Test，用于测试磁盘访问速度, [cracked]

39.   zoom，开会用

40.   ShortcutDetective，检测哪个软件在使用哪个快捷键，很好用

      ![image-20240509212116977](https://gitee.com/sekiro_meng/images/raw/master/mac-air/2024/2024-05-09/2024-05-09T21:21:17.png)

41.   Elmedia Player，视频播放软件，可以解析 `.mov` 格式，总之比较好用, [cracked]

42.   Goodnotes 5，电脑上可以不安装，反正买了

43.   MarginNote 3，也买了

44.   Discord，有些群会这上面，也是即时通讯软件

45.   Gopeed，磁力链接下载/种子下载器

46.   Adobe Photoshop，就在网上找吧，装这个比较麻烦，需要先安装 Adobe Creative Cloud

47.   Termius，使用界面进行 SCP

48.   Snipaste，截屏软件

49.   Magnet，分屏软件

50.   Parallel Desktop，虚拟机，[cracked]

51.   Docker，容器

52.   剪映，视频剪辑

53.   Flux，可以安装，会在快睡觉的时候提醒你，还会在晚上把屏幕色温调低

54.   Caffinated，防止休眠的软件
