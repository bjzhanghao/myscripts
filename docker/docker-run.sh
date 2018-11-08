#交互方式
# --name 指定容器名称
# --rm 退出后删除此容器
# -it 是-i -t的缩写，-i表示交互式，-t表示tty，这两个选项一般放在一起用
docker run --name ubuntu_bash --rm -it ubuntu bash