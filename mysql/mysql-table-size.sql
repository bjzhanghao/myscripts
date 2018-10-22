#使用information_schema表（实际是视图）
use information_schema;
select table_schema, table_name, table_rows, data_length, index_length from tables;

#或使用mysqlshow命令
mysqlshow --status mydb mytable