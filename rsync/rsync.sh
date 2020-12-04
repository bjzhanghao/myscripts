# 同步本地文件到远程服务器
rsync -avzr --log-file=rsync.log --exclude='dir1/' /my/local/dir user1@remote_host:/my/remote/dir