# 启动一个新容器并执行一个命令
# 若没有用--name参数指定容器名字，则会自动随机分配一个类似"loving_golick"、"infallible_wing"这样的名字
# 容器执行完就会自动退出
docker run ubuntu echo hello world

# 启动一个新容器并进入交互方式
# --name 指定容器名称
# --rm 退出后删除此容器
# -it 是-i -t的缩写，-i表示交互式，-t表示tty，这两个选项一般放在一起用
docker run --name ubuntu_bash --rm -it ubuntu bash