#在控制台里显示最早的10条消息
#FIXME
kafka-console-consumer.sh --bootstrap-server localhost:9092 --max-messages 10 --from-beginning --topic myTopic
