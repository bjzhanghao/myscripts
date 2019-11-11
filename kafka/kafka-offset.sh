#修改指定group的offset
#Since kafka 0.11.0.0
bin/kafka-consumer-groups.sh --bootstrap-server <ipaddress>:9092 --group group_repo_mtx_high --reset-offsets --to-earliest --all-topics --execute