#在指定文件里查找指定内容，-i表示不区分大小写
> grep -i 'keyword' /my/file

#显示匹配行的前后10行（适合看日志）
#若把-C替换为-B则只显示前10行，替换为-A则只显示后10行
> grep -C 10 'keyword' /my/file