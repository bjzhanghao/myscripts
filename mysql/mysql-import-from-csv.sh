#!/bin/sh
#从csv文件里读入数据并导入到指定的mysql表
LOAD DATA INFILE "/path/file.csv" INTO TABLE <tablename> 
    FIELDS ENCLOSED BY '"'
    ESCAPED BY '\\'
    TERMINATED BY ','
    LINES TERMINATED BY '\r\n'
    IGNORE 1 LINES