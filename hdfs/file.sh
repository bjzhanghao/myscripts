#hdfs文件操作

#创建目录
hadoop fs -mkdir /my/path

#上传文件
#若是windows路径使用"/"或"\\"作为分隔符
hadoop fs –put /local/file /remote/path
hadoop fs –copyFromLocal /local/file /remote/path

#查看文件内容
#没法限制只查看前/后几行
hadoop fs –cat /my/path/myfile
hadoop fs –tail /my/path/myfile

#下载文件
hadoop fs –get /remote/file /local/path
hadoop fs –copyToLocal /remote/file /local/path

#删除文件
hadoop fs -rm /remote/file