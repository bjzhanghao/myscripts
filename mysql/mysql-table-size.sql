#查看mysql数据库里每个表的行数和占用空间大小
use information_schema;
select table_schema, table_name, table_rows, data_length, index_length from tables;