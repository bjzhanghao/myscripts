mysqldump -uroot mydb --ignore-table=mydb.mytable|gzip> /root/backup/mydb_backup.sql.gz
