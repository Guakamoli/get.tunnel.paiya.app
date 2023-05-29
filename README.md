## download

### 安装
```bash
sudo sh -c "$(curl -fsSL https://get.tunnel.paiya.app)"
```

如果发现 `curl: (7) Failed to connect to raw.githubusercontent.com port 443: Connection refused` 这种错误

年轻人，你的网络运营商屏蔽了 Github

可以使用如下方法尝试:

```bash
# 例子: HTTPS_PROXY=http://127.0.0.1:8081

sudo HTTPS_PROXY=你的代理链接 sh -c "$(curl -fsSL https://get.tunnel.paiya.app)"
```

### 卸载

```bash
sudo sh -c "$(curl -fsSL https://get.tunnel.paiya.app/uninstall.sh)"
```

## link

[github.com/Guakamoli/tunnel](https://github.com/Guakamoli/tunnel)
