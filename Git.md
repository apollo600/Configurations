```shell
# Author 信息
git config --global user.email "1356464784@qq.com"
git config --global user.name "sekiro"

# Git 支持中文显示
git config --global core.quotepath false

# Proxy
git config --global http.proxy "127.0.0.1:7890"
git config --global https.proxy "127.0.0.1:7890"
```

#### 让ssh使用代理

https://kuokuo.io/2019/07/01/ssh-over-http-or-socks/

这个场景是github目前只支持使用SSH密钥进行认证，但是SSH默认不走HTTP代理，因此通过设置SSH的HTTP代理可以解决既完成鉴权，又高速克隆。

```shell
yay -S corkscrew # 使用 corkscrew 工具
vim ~/.ssh/config
-----------------
ProxyCommand /usr/bin/corkscrew 127.0.0.1 7890 %h %p
```

