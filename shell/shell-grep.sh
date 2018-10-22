#在指定文件里查找指定内容，-i表示不区分大小写
> grep -i 'keyword' /my/file

#显示匹配行的前后10行（适合看日志）
> grep -B 10 'keyword' /my/file