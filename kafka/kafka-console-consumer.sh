#打印指定topic内容到控制台（并过滤）
bin/kafka-console-consumer.sh --zookeeper 10.1.235.15 --topic defaultUser-defaultSpace-exception | grep '\[EXCEPTION\]'

#kafka 2.3版本参数有所改变：
bin/kafka-console-consumer.sh --bootstrap-server <localhost:9092> --topic <mytopic>

#加--from-beginning参数表示从第一条消息开始消费
bin/kafka-console-consumer.sh --bootstrap-server <localhost:9092> --topic <mytopic> --from-beginning