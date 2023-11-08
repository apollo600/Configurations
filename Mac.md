### Homebrew

安装看官网：[Homebrew — The Missing Package Manager for macOS (or Linux)](https://brew.sh/)

这里主要解决一个换源的问题。当时从清华源粘贴了一个脚本：

```shell
export HOMEBREW_CORE_GIT_REMOTE="https://mirrors.ustc.edu.cn/homebrew-core.git"
for tap in core cask{,-fonts,-versions} command-not-found services; do
    brew tap --custom-remote --force-auto-update "homebrew/${tap}" "https://mirrors.tuna.tsinghua.edu.cn/git/homebrew/homebrew-${tap}.git"
done
brew update
```

这种东西，用起来方便，想找到他到底干了什么就难了。现在因为清华源放弃维护，导致 homebrew 安装不了东西，我也不知道问题到底出在哪，搞了半天。

将这个脚本中的清华源替换成其他能用的源就好了：

```shell
export HOMEBREW_CORE_GIT_REMOTE="https://mirrors.ustc.edu.cn/homebrew-core.git"
for tap in core cask{,-fonts,-versions} command-not-found services; do
    brew tap --custom-remote --force-auto-update "homebrew/${tap}" "https://mirrors.ustc.edu.cn/homebrew-${tap}.git"
done
brew update
```

