#计算指定目录下的文件大小
#-s表示只显示总大小（不显示每个子目录大小）
#-h表示结果显示为KB或MB等易读单位
hadoop fs -du -s -h /my/path
