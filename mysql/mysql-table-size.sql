#使用information_schema表（实际是视图）
select table_schema, table_name, table_rows, data_length, index_length from information_schema.tables;

#或使用mysqlshow命令
#表名是可选项
mysqlshow --status mydb [mytable]