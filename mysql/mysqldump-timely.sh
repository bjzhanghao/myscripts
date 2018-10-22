#!/bin/sh
#定期备份数据库并压缩，文件名包含备份时间
NOW=$(date +'%Y%m%d_%H%M%S')
mysqldump -uroot mydb|gzip> /root/backup/mydb_db_$NOW.sql.gz
