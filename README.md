## 快速开始

### 配置文件

联系管理员([flxxyz](https://github.com/flxxyz)) 开通权限

```bash
# 将管理员创建的用户标记写入到本地配置文件中
echo '唯一的用户标记' > ~/.tunnel
```

### 安装
```bash
sudo sh -c "$(curl -fsSL https://get.tunnel.paiya.app)"
```

如果发现 `curl: (7) Failed to connect to raw.githubusercontent.com port 443: Connection refused` 这种错误

年轻人，你的网络运营商屏蔽了 Github

可以使用如下方法尝试:

```bash
# 例子: HTTPS_PROXY=http://127.0.0.1:8081
# 小写变量名字也是可以的

sudo HTTPS_PROXY=你的代理链接 sh -c "$(curl -fsSL https://get.tunnel.paiya.app)"
```

### 使用

查看下基本参数，方便使用

```bash
tunnel --help
```

在终端输入 `tunnel` 直接启动，则默认监听地址 **127.0.0.1** 以及端口 **8080**

> 如果使用 **-d** 参数，则方便你将日志发送给管理员，分析你当前网络的服务连通性

### 卸载

```bash
sudo sh -c "$(curl -fsSL https://get.tunnel.paiya.app/uninstall.sh)"
```

## link

[github.com/Guakamoli/tunnel](https://github.com/Guakamoli/tunnel)
