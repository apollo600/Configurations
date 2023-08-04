#### Clash for Windows

从此 [链接](https://cvws.icloud-content.com.cn/B/AaI4k_bKypLbJMJz1yXSWcyRIM4RAYUprBsYyxCyOjIKrWT_62GaKSmB/Clash.for.Windows-0.20.30-x64-linux.tar.gz?o=ApzGfz4ziPelnN7ZjsvI0g8I7HBDbNm90It80MHhxSQh&v=1&x=3&a=CAogjDDfZPSiI_OHd-BwpHxNxNyybZuM2Mm5QnHMsMilsNsSbxD6yLOnmzEY-qWPqZsxIgEAUgSRIM4RWgSaKSmBaid3zk_S2Mfq1-oh0nliIyVsWTEkBl3M1p6rRnwgJqK16uC5OPewYZxyJ0-wXv6hiwkBnSmbKSauH6QvsjnY_w7uZTQYZzCaPWh4BZTMxU86Kg&e=1690961171&fl=&r=92ddebfa-61f9-486a-9df4-9242052c7598-1&k=U8puK7ePAg-A9wW5nw5NGw&ckc=com.apple.clouddocs&ckz=com.apple.CloudDocs&p=220&s=LvWQwHNzQhfmjxq47mAst8RbUpA) 下载一个旧版本，然后再更新

#### pacman添加源

```shell
vim /etc/pacman.conf
# 修改后更新密钥
sudo pacman -Sy archlinuxcn-keyring
```

#### yay

@ https://razonyang.com/zh-hans/archlinux-guide/yay/

```shell
sudo pacman -S yay
# 最好不要换源
yay --aururl "https://mirrors.aliyun.com/archlinuxcn" --save
# 如果想要换回官方源
yay --aururl "https://aur.archlinux.org" --save
yay --aurrpcurl "https://aur.archlinux.org/rpc" --save
```

#### 输入法

@ https://razonyang.com/zh-hans/archlinux-guide/fcitx/

```shell
# 找不到 sougou
yay -S fcitx fcitx-im
yay -S fcitx-configtool
yay -S fcitx-googlepinyin
yay -S fcitx-sougoupinyin
# 进行设置
echo -e "GTK_IM_MODULE=fcitx\nQT_IM_MODULE=fcitx\nXMODIFIERS=@im=fcitx" > ~/.pam_environment
# 重新启动
sudo reboot
```

#### 浏览器

优先使用edge，其次是chrome。

安装edge:

```shell
yay -S microsoft-edge-stable-bin # 该安装过程时间较长，大概一小时
```

安装chrome:

```shell
yay -S google-chrome
```

#### VS Code

在Archlinux上有多个安装源，从AUR上下载官方的发行版发现无法进行设置同步。

首先从 [链接](https://aur.archlinux.org/cgit/aur.git/snapshot/visual-studio-code-bin.tar.gz) 下载压缩包，解压后用 `makepkg -si` 进行安装即可。

然后使用 Github 帐号登录以同步设置。

#### 微信

https://github.com/vufa/deepin-wine-wechat-arch

目前无法正常使用

#### QQ

使用`yay`可以直接安装

```shell
yay -S linuxqq # 会有三个搜索结果，全名就是 linuxqq
```

#### debtap

用于将`.deb`格式文件转换成 archlinux 可以安装的 pkg。

https://www.jianshu.com/p/59a494968725

```shell
git clone https://github.com/helixarch/debtap
cd debtap
sudo cp debtap /usr/local/bin
sudo debtap -u  # 安装相关的软件
```

使用说明：

```shell
debtap xxx.deb # 转换为 .pkg
sudo pacman -U xxx.pkg # 安装 .pkg
```

**问题：执行 `sudo debtap -u` 一直卡在最后一步，下载 "virtual package list" 会卡住。**

