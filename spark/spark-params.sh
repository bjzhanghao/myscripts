//Spark命令行的常用参数
//使用spark-shell --help可以查看所有可用参数
//参数的使用方法举例：
//spark-shell --executor-memory 8M

--num-executors executor的个数（仅在Yarn上运行时可用）
--executor-memory 每个executor的可用内存，缺省值1G


//实例
spark2-shell --num-executors 10 --executor-memory 8G --jars "./KmxService.jar,/opt/cloudera/parcels/CDH/lib/hbase/hbase-client-1.2.0-cdh5.9.0.jar,/opt/cloudera/parcels/CDH/lib/hbase/hbase-common-1.2.0-cdh5.9.0.jar" --driver-class-path "/opt/cloudera/parcels/CDH/lib/hbase/hbase-client-1.2.0-cdh5.9.0.jar:/opt/cloudera/parcels/CDH/lib/hbase/hbase-common-1.2.0-cdh5.9.0.jar"