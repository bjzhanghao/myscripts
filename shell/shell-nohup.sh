# 后台运行指定的命令，即使终端断开也不停止
# 2>&1表示将错误输出(stderr)到标准输出(stdout)
nohup mycommand >nohup_log.out 2>&1 &

#若不指定输出文件名则默认输出到nohup.out文件