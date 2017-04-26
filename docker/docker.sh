#常用docker命令

#下载一个镜像(image)
docker pull mydomain.com/myimage

#启动一个容器(container)
#其中--name指定容器的名字，-p映射端口（新:旧），-e环境变量
docker run -tid --name iwind-db -p 3306:3306 -e MYSQL_DATABASE='mydb' myimage
