#在根目录（包含子目录）查找指定文件名的文件
> find / -name myfile.txt

#在当前目录查找大于2M的文件
> find . -type f -size 2M

#查找目录类型的文件
> find / -type d -name mydir

#对查找结果执行命令
#查找所有权限为777的文件，修改为644
> find / -type f -perm 0777 -print -exec chmod 644 {} \;

#将所有查找结果文件删除
> find . -type f -name "myfile.txt" -exec rm -f {} \;


#更多例子
#https://www.tecmint.com/35-practical-examples-of-linux-find-command/