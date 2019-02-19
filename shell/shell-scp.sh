#从本地复制文件到远程
scp local_file remote_username@remote_ip:remote_file

#从远程复制文件到本地
scp remote_username@remote_ip:remote_file local_file

#从远程复制文件到本地（文件夹）
scp -r remote_username@remote_ip:remote_folder local_folder