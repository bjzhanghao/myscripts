#将本地文件复制到HDFS
hadoop fs -copyFromLocal /my/local/file/or/folder /folder/on/hdfs
hadoop fs -copyFromLocal /my/local/file/or/folder hdfs://host:port/folder/on/hdfs