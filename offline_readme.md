### 1. 下载打包好的离线image
在github仓库的release页面，下载打包好的最新镜像：os_metricbeat.img

### 2. 加载镜像
```shell script
# mind the current path
docker load -i os_mtricbeat.img
```

### 3. 创建容器
```shell script
rm -rf logs
mkdir logs
docker run -it -d -v logs:/metricbeat/logs --name os_mtricbeat fanqiliang/os_mtricbeat:lates /bin/bash
```

### 4. 进入容器运行环境
```shell script
# 如果是在服务器上运行，需要持久化操作，简单起见，介绍screen
screen -S os_metricbeat
docker exec -it os_metricbeat /bin/bash
./metricbeat

# 现在，可以直接关闭远程ssh，不要做任何其他操作。（如有必要，可查找screen的用法）
```

### 5. 恢复运行时环境
```shell script
screen -r os_metricbeat
```