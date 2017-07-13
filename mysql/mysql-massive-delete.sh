#!/bin/sh
#多次小批量删除指定范围内的记录（每次删除1000条）
#比不分批效率高
echo press ctrl+c to stop
for i in {1..99999}
do
	echo [`date`] delete iteration ${i}
	mysql -uroot mydb -e "delete from mytable where id<=50000000 limit 1000"
	sleep 1
done
