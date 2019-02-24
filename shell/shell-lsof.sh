# 显示指定端口被哪个进程占用（有冒号）
lsof -i:<port>

# 显示指定进程在使用哪些文件（没有冒号）
lsof -p<process>