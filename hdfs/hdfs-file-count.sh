#计算指定目录下的文件数量
#结果格式：17539       489727      1287202035845 /my/path
#结果内容分别为：文件夹数，文件个数，文件所占空间（不计算副本）
hadoop fs -count /my/path

#或者
hdfs dfs -count /my/path