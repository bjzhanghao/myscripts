#每分钟无重复记录数（根据ts,wtid分组后查询）
select count(t1.group_time),t1.group_time from (select ts,wtid,from_unixtime(unix_timestamp(minutes_sub(ts,date_part('minute',ts)%1)),'yyyy-MM-dd HH:mm') as group_time from gw_7s group by ts,wtid) t1 group by t1.group_time order by t1.group_time;

#每天无重复记录数（根据ts,wtid分组后查询）
select count(t1.group_time),t1.group_time from (select ts,wtid,from_unixtime(unix_timestamp(days_sub(ts,date_part('day',ts)%1)),'yyyy-MM-dd') as group_time from gw_7s group by ts,wtid) t1 group by t1.group_time order by t1.group_time;

#每天有重复记录数（多次重复只计一次）
select count(t1.group_time),t1.group_time from (select ts,wtid,from_unixtime(unix_timestamp(days_sub(ts,date_part('day',ts)%1)),'yyyy-MM-dd') as group_time from gw_7s group by ts,wtid having count(*)>1) t1 group by t1.group_time order by t1.group_time;

#每天有重复记录数（多次重复按多次计）
select sum(count_v)-count(t1.group_time) as repeat_num,t1.group_time from (select count(*) as count_v, ts,wtid,from_unixtime(unix_timestamp(days_sub(ts,date_part('day',ts)%1)),'yyyy-MM-dd') as group_time from gw_7s group by ts,wtid having count_v>1) t1 group by t1.group_time order by t1.group_time;