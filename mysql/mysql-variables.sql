#查看mysql全局参数值
#一般加like条件否则显示的内容过多
show global variables like '%buffer%';

#或者这样：
select @@variable_name;

#查看mysql当前运行状态数据
#也可以加like条件
show status;

