#备份数据库（排除指定表格）
mysqldump -uroot mydb --ignore-table=mydb.mytable|gzip> /root/backup/mydb_backup.sql.gz
