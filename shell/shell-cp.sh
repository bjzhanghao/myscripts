#复制整个目录并保留文件属性（创建时间、权限等）
#要查看复制进度，可以使用du /target -sh查看已完成的大小，或使用lsof -p<pid>查看当前正在处理哪个文件
cp -a /src /target