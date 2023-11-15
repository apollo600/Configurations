## 安装列表

1.   Clash for Windows, iCloud 下载人工备份

2.   iTerm2, 目前的配置并不算多,主要是字体、背景之类的

     1.   维护一份配置文件 [iterm2.json](./iterm2.json)
     2.   需要配置 Nerd Font [Nerd Fonts - Iconic font aggregator, glyphs/icons collection, & fonts patcher](https://www.nerdfonts.com/font-downloads), 目前使用的是 CodeNewRoman Nerd Font, 也可以使用 FiraCode Nerd Font

     <img src="https://gitee.com/sekiro_meng/images/raw/master/mac-air/202311141550191.png" alt="202311140105129" style="zoom: 33%;" />

3.   Homebrew, mac 上很好用的安装器 [官网](brew.sh)

     ```
     # 修改 brew.git 为阿里源
     $ git -C "$(brew --repo)" remote set-url origin https://mirrors.aliyun.com/homebrew/brew.git
     
     # zsh 替换 brew bintray 镜像
     $ echo 'export HOMEBREW_BOTTLE_DOMAIN=https://mirrors.aliyun.com/homebrew/homebrew-bottles' >> ~/.zshrc
     $ source ~/.zshrc
     
     # 刷新源
     $ brew update
     ```

4.   Starship, 用于增强命令行的提示, 直接用 brew 安装就好 [Starship](https://starship.rs/zh-CN/guide/#🚀-安装)

     1.   [macos - How to disable the "AppleRawMaxCapacity" warning in mac terminal - Stack Overflow](https://stackoverflow.com/questions/77222467/how-to-disable-the-applerawmaxcapacity-warning-in-mac-terminal)

5.   edge 浏览器

6.   Nead Download Manager

     1.   安装插件
     2.   配置代理

7.   Typora

8.   Doppler, 本地音乐播放器, [cracked]

9.   Zotero, 论文阅读

10.   Office, [cracked]

11.   Clean My Max X, [cracked]

12.   滴答清单, [Appstore]

13.   腾讯会议

14.   坚果云

15.   ==NTFS for Mac==, 应该有更好的免费替代品

16.   Logi Options+/Logi Hub

17.   Xmind, [cracked]

18.   CotEditor, 类似于记事本的编辑器

19.   VS Code

20.   Adobe Acrobat, [cracked]

21.   Maccy, 剪贴板管理器

      1.   设置“自动粘贴”

22.   Hidden Bar, [Appstore]

23.   网易邮箱大师

24.   Giphy Capture, 录制 Gif, 应该有更好的选择

25.   qq

      1.   配置文件保存路径, `~/Documents/qq接收文件`

26.   微信

      1.   设置小于一定大小自动保存文件

27.   VNC Viewer, 用于远程控制转发界面

28.   PicGo, 图床组建

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

29.   Lunar, 调整显示器亮度

30.   ShadowsocksX-NG

31.   Proxifier, [cracked]
