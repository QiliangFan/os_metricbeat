# metricbeat
> 目的：在centos7中搭建metricbeat监听系统的的状况，为了保证环境的稳定使用docker进行搭建环境。可以基于此repo中的metricbeat做其他的工作
>
> 如果仅仅想使用这个docker image，可执行该指令获取打包生成的image：
```shell script
docker pull fanqiliang/os_metricbeat:latest
```
> 如果你所在网络环境不能拉取docker image，可以参考该[readme.md](offline_readme.md)
> 
> 一些更多的细节也包含在其中可供查看
### 1. docker环境：centos7
### 2. 软件依赖：
> metricbeat：用于监听centos7系统

### 3. 构建
```shell script
# make sure the docker is already installed
sudo chmod +x build.sh && ./build.sh# build the environment
sudo docker attach metricbeat
# or: sudo docker exec -it metricbeat /bin/bash
```

### 4. 运行:
```shell script
# 使用sudo docker attach metricbeat 进入docker后
./metricbeat
```

### 5. 查看日志
通过设置文件映射，不需要进入docker查看，只需要在当前路径下的logs文件夹中看相应日志

### 6. 卸载容器和镜像
```shell script
sh delete.sh
```

### 7. 一些小问题
> 由于docker使用的用户UID和主机用户UID不同，会存在权限的问题，如果本机的logs下文件无法访问，需要在docker中修改文件的权限