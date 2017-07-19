#!/bin/sh
#将mysql表内的数据导出为csv文件（带表头）
(SELECT
    'id','device_id','date','package_name','uptime','modify_time','name','black','upcount','hour','app_id')
UNION
(SELECT
    id,device_id,date,package_name,uptime,modify_time,name,black,upcount,hour,app_id
FROM dap_app_usage
WHERE id<100000 AND date=20140611
    INTO OUTFILE '/root/20170611.csv'
    FIELDS ENCLOSED BY '"'
    ESCAPED BY '"'
    TERMINATED BY ','
    LINES TERMINATED BY '\r\n');



#将每天的数据打包为一个csv文件
