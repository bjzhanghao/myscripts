#docker-compose常用命令

#启动一个容器
#其中my-container是my.yml文件里的顶层node
docker-compose -f my.yml up -d my-container

#从宿主机复制文件到容器
docker cp <containerId>:/file/path/within/container /host/path/target