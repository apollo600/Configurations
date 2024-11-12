### 别名

```sh
# $ dockps // Alias for: docker ps --format "{{.ID}} {{.Names}}"
# $ docksh <id> // Alias for: docker exec -it <id> /bin/bash
alias dockps='docker ps --format "{{.ID}} {{.Names}}"'
docksh() {
	docker exec -it $1 /bin/bash
}
```

### 代理

1.  打开 Docker 的代理配置文件：

    ```sh
    sudo nano /etc/systemd/system/docker.service.d/http-proxy.conf
    ```

2.  找到以下内容，将其删除或注释掉：

    ```ini
    [Service]
    Environment="HTTP_PROXY=http://your.proxy.address:port"
    Environment="HTTPS_PROXY=http://your.proxy.address:port"
    Environment="NO_PROXY=localhost,127.0.0.1"
    ```

3.  保存并退出文件。

4.  重新加载 systemd 并重启 Docker 服务：

    ```sh
    sudo systemctl daemon-reload
    sudo systemctl restart docker
    ```

### 