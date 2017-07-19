#!/bin/sh
#按指定表内记录的时间值，相同日期的打包到一个csv文件，文件名格式为“20150618.csv”
#注意目标目录权限

#命令行参数指定参数
#dtFrom=$1
#dtTo=$2
#idFrom=$3
#idTo=$4
#path=$5

#固定参数
dtFrom="20140611"
dtTo="20140612"
idFrom="0"      #指定id范围的目的是加速SQL查询
idTo="100000"   #指定id范围的目的是加速SQL查询
path="/home/my"  #注意不要用相对路径，否则会导出到/mydata/mysql/目录下

beg_s=`date -d "$dtFrom" +%s`   #1420041600
end_s=`date -d "$dtTo" +%s`     #1420041600
while [ "$beg_s" -le "$end_s" ]
    do
        dt=$(date -d @$beg_s +"%Y%m%d")  #20150618
        echo [`date`] processing $(date -d @$beg_s +"%Y%m%d")

        #导出当天的记录到csv文件
        mysql -uroot apptimer -e "(SELECT
                                           'id','device_id','date','package_name','uptime','modify_time','name','black','upcount','hour','app_id')
                                       UNION
                                       (SELECT
                                           id,device_id,date,package_name,uptime,modify_time,name,black,upcount,hour,app_id
                                       FROM dap_app_usage
                                       WHERE id between $idFrom AND $idTo AND date=$dt
                                           INTO OUTFILE '$path/$dt.csv'
                                           FIELDS ENCLOSED BY '\"'
                                           ESCAPED BY '\"'
                                           TERMINATED BY ','
                                           LINES TERMINATED BY '\r\n');"
        beg_s=$((beg_s+86400))
done
