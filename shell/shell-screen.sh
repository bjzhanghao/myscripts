# 创建screen会话（-S选项可以为会话起名）
screen -S mysession

# 查看会话列表
screen -ls

# 离开当前会话（detatch）
Ctrl+a d

# 恢复到指定会话
screen -r mysession

# 远程同步演示（远程用户使用-x选项加入到同一个会话）
screen -x mysession