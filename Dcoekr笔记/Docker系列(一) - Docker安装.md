## Docker系列(一)  -  Docker安装

### 1 安装Docker引擎

```
// 1.安装 yum-utils 软件包
sudo yum install -y yum-utils
// 2.设置存储库
sudo yum-config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo
// 3.安装Docker引擎
sudo yum install docker-ce docker-ce-cli containerd.io
```

如果提示接受GPG密钥，请验证指纹是否匹配 "060A 61C5 1B55 8A7F 742B 77AA C52F EB6B 621E 9F35" ，如果是，选择接受它。如下图：

![image-20200721145127127](https://gitee.com/50/PictureWarehouses/raw/master/img/20200721145128.png)



### 2 启动Docker

`sudo systemctl start docker`

其它命令：

```
// 1.设置开机启动
sudo systemctl enable docker
// 2.启动docker
sudo systemctl start docker
// 3.停止docker
sudo systemctl stop docker
// 4.重启docker
sudo systemctl restart docker
// 5.查看docker状态
sudo systemctl status docker
```

### 3 验证安装是否成功

运行 hello-world 测试docker是否安装成功

![image-20200721145539048](https://gitee.com/50/PictureWarehouses/raw/master/img/20200721145540.png)

### 4 查看Docker信息

#### 4.1 查看Docker信息

![image-20200721145341245](https://gitee.com/50/PictureWarehouses/raw/master/img/20200721145343.png)

#### 4.2 查看Docker版本

![image-20200721145359034](https://gitee.com/50/PictureWarehouses/raw/master/img/20200721145400.png)

### 5 卸载Docker

```
sudo yum remove docker \
                docker-client \
                docker-client-latest \
                docker-common \
                docker-latest \
                docker-latest-logrotate \
                docker-logrotate \
                docker-engine
```

### 6 登录Docker-hub

先在 [docker-hub](https://www.docker.com/products/docker-hub) 注册一个账号。

登录：  `docker login` ，并输入账号、密码。

![image-20200721145443152](https://gitee.com/50/PictureWarehouses/raw/master/img/20200721145449.png)

退出登录：`docker logout`

### 7 参考

https://docs.docker.com/engine/install/centos