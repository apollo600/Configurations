#### Quick Start

##### 添加环境变量

找到Msys2的安装目录，例如：`E:\msys64`

目录结构如下，可以发现这里比较像Linux的目录结构，我们将`E:\msys64\usr\bin`添加到Windows的环境变量中，然后就可以在Windows的终端中调用这些Unix工具了。

```shell
.
├── clang32
├── clang64
├── clangarm64
├── dev
├── etc
├── home
├── installerResources
├── mingw32
├── mingw64
├── opt
├── tmp
├── ucrt64
├── usr
└── var
```

##### 换源

MSYS2使用Pacman作为包管理工具，这个工具在Arch Linux上也可以使用，非常方便，以`pacman -Syu`这条命令闻名，可以一键滚动更新。

```shell
# 一条命令换源
sed -i "s#https\?://mirror.msys2.org/#https://mirrors.tuna.tsinghua.edu.cn/msys2/#g" /etc/pacman.d/mirrorlist*
```

> Referred to [msys2 | 镜像站使用帮助 | 清华大学开源软件镜像站 | Tsinghua Open Source Mirror](https://mirrors.tuna.tsinghua.edu.cn/help/msys2/)

#### Using Cases

##### #1 zsh

直接`pacman -S zsh`，就可以使用zsh了

##### #2 GNU

直接`pacman -S make gcc cmake`

不仅如此，通过pacman可以保持GNU处于最新版

##### #3 Linux工具

可以使用如`tree`, `du`, `sed`这些方便的Linux工具，安装也很简单