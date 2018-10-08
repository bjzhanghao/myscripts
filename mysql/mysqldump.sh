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
