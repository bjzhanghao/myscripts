//spark-shell常用操作

//读取一个文件
//文件可以是hdfs上的相对路径，例如/my/file
//得到的结果类型是RDD
val file1 = sc.textFile("/my/file")

//统计文件行数
file1.count()

//将RDD转换为CSV比较麻烦
//参考http://dblab.xmu.edu.cn/blog/1360-2/

//也可以直接按csv格式读文件
//得到的就是DataFrame类型（但不会自动将第一行认作表头）
val file2 = spark.read.format("csv").load("/my/file")

//另一种方式是使用spark-csv
//https://github.com/databricks/spark-csv
//其中spark是spark-shell内置的sparkSession对象
bin/spark2-shell --packages com.databricks:spark-csv_2.11:1.5.0
val record = spark.read().format("com.databricks.spark.csv").option("header", "true").option("inferSchema", "true").load(userFile);

//在spark2.0里（建议）
//其中spark是spark-shell内置的sparkSession对象
//参考http://stackoverflow.com/questions/29704333/spark-how-to-read-csv-file-as-dataframe
val file3 = spark.read.option("header","true").csv(path)