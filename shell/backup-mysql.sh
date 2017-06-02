#!/bin/sh
NOW=$(date +'%Y%m%d_%H%M%S')
mysqldump -uroot mydb|gzip> /root/backup/mydb_db_$NOW.sql.gz
