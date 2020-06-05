# 进入一个已启动的容器
# -it 是-i -t的缩写，-i表示交互式，-t表示tty，这两个选项一般放在一起用
docker exec -ti mynginx /bin/bash