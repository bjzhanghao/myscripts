# 查看指定topic里的logsize
# time=-1表示查询各个分区当前最大的消息位移值，-2表示最小
bin/kafka-run-class.sh kafka.tools.GetOffsetShell --broker-list <ip>:9092 --topic <topicname> --time -1