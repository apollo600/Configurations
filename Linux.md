#### Clash for Windows

用于解决网络问题，需要从其他设备下载好拷贝到此设备

**or** 从此 [链接](https://cvws.icloud-content.com.cn/B/AaI4k_bKypLbJMJz1yXSWcyRIM4RAYUprBsYyxCyOjIKrWT_62GaKSmB/Clash.for.Windows-0.20.30-x64-linux.tar.gz?o=ApzGfz4ziPelnN7ZjsvI0g8I7HBDbNm90It80MHhxSQh&v=1&x=3&a=CAogjDDfZPSiI_OHd-BwpHxNxNyybZuM2Mm5QnHMsMilsNsSbxD6yLOnmzEY-qWPqZsxIgEAUgSRIM4RWgSaKSmBaid3zk_S2Mfq1-oh0nliIyVsWTEkBl3M1p6rRnwgJqK16uC5OPewYZxyJ0-wXv6hiwkBnSmbKSauH6QvsjnY_w7uZTQYZzCaPWh4BZTMxU86Kg&e=1690961171&fl=&r=92ddebfa-61f9-486a-9df4-9242052c7598-1&k=U8puK7ePAg-A9wW5nw5NGw&ckc=com.apple.clouddocs&ckz=com.apple.CloudDocs&p=220&s=LvWQwHNzQhfmjxq47mAst8RbUpA) 下载一个旧版本

#### Git

look at [Git Configurations](Git.md)

#### zsh

安装 [[Oh My Zsh - a delightful & open source framework for Zsh](https://ohmyz.sh/)]

```shell
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

安装插件

```shell
cd ~/.oh-my-zsh/plugins
git clone --depth=1 https://github.com/zsh-users/zsh-syntax-highlighting.git
git clone --depth=1 https://github.com/zsh-users/zsh-completions.git
git clone --depth=1 https://github.com/zsh-users/zsh-autosuggestion.git
```

安装 shell 工具

```shell
yay -S starship tldr fzf
tldr -u # 更新 tldr 缓存
```

最后

```shell
source ~/.zshrc
```

#### Edge浏览器

除了浏览器的基本功能，用于同步书签

https://www.microsoft.com/en-us/edge/download?form=MA13FJ

#### 输入法

fcitx + gugoupinyin

#### Typora

用于查看/编辑Markdown文件

https://typora.io/

#### VS Code

代码编辑器

https://code.visualstudio.com/

#### QQ

https://im.qq.com/index/

#### 坚果云

https://www.jianguoyun.com/s/downloads

#### uGet

用于多线程下载文件，和浏览器兼容不如NDM，目前是手动添加下载任务

https://ugetdm.com/

#### Zotero

文献阅读+管理，使用坚果云WebDAV进行同步文献

https://www.zotero.org/

具体见 [Zotero配置](Zotero.md)

#### 腾讯会议

在部分Linux发行版上可能存在渲染引擎不支持问题

https://meeting.tencent.com/download/