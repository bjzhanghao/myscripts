#完整备份数据库
mysqldump -uroot mydb > ~/mydb.sql

#备份数据库指定表
mysqldump -uroot mydb mytable > ~/mytable.sql

#备份数据库指定表里符合条件的数据（--where）
mysqldump mydb mytable --where="id>1234" ...

#备份数据库（排除指定表 --ignore-table）
mysqldump -uroot mydb --ignore-table=mydb.mytable ...

#只备份数据不备份结构（-t）
mysqldump -t ...

#只备份表结构不备份数据
#如果用户没有对标加锁的权限可使用--skip-lock-tables选项
mysqldump --no-data ...

#导入备份的数据
mysql> use mydb
mysql> source /tmp/mydb.sql