#根据socket服务log统计：


#统计时间(sediment)-风机：
cat netty-server.log|sed -n '/Say/s/.*sediment|//g;s/|(realtimedata|/, /g;s/|.*//g'p
#（旧）cat netty-server.log|sed -n '/kafka/d; s/,.#logTime.realtimedata|/ /; s/|.*//'p


#统计时间(recv)-风机：
tail -n200 netty-server.log|sed -n '/Say/s/ - .*realtimedata|/, /g;;s/|.*//g'p


#统计unique风场：
cat netty-server.log|sed -n '/kafka/d; s/.*realtimedata|//; s/[0-9]\{3\}|.*//'p|sort|uniq

#统计unique风机：
cat netty-server.log|sed -n '/Say/g;s/.*realtimedata|//g;s/|.*//'p|sort|uniq
（旧）cat netty-server.log|sed -n '/kafka/d; s/.*realtimedata|//; s/|.*//'p|sort|uniq

#统计connection建立：
tail -f netty-server.log|sed -n '/active/'p

#导出csv数据：
tail -n20000 netty-server.log|sed -n '/Say/s/.*realtimedata|//g;s/|/,/g'p>socket_n20000_20170116.csv
#(旧）tail -n20000 netty-server.log|sed -n '/kafka/d; /RemoteAddress/d; /comtest/d; s/.*realtimedata|//; s/|/,/;'p > n20000.csv

#复制文件到宿主机
docker cp e9b177bc4876:/opt/k2data/n20000.csv .


#log样例：
2017-01-16 17:35:06,624 - #logTime. /10.10.247.15:63533 Say : (sediment|2017-01-16 17:32:39.760|(realtimedata|140604090|2017-01-16 17:32:39.728,160.61,4.53,110.63,-8.99,0.18,26.50,26.50,26.50,94.00,178.76,188.62,10.04,10.20,10.18,10.20,0.01,0.00,0.01,0.00,17.50,17.10,17.00,16.29,17.79,18.60,19.80,345.79,344.10,345.00,225.00,226.00,224.00,195.00,49.95,-135.00,0.99,14.80,5.80,-5.30,0.00,-4.19,-3.59,-3.70,-4.00,5.59,5.09,5.19,6.50,5.19,4.00,1.29,1.20,0.89,6.50,5.19,4.00,58.98,58.96,58.87,29.49,29.43,29.43,0.00,0.10,0.04,-0.20,-0.50,-0.18,0.00,0.00,0.00,7429.01,7025.89,391.54,6498.10,5679.26,2145034.000,12798.00,8.03,0.00,20.00,20.00,20.00,25.79,26.20,26.39,26.29,26.39,26.29,26.20,26.39,0.00,0.00,5.19,50.00,47.79,0.00,0.00,4.69,550.70,-549.09,0.00,-1.00,0.00,0.00,0.00,60.00,0.00,14.89,600,0,0,1,5860.72,932.36,0.14,1.67,930.91,0.00,0.00,5047.61,0,5.09,5.90,0.00,0.00,0.00,0,1500,328,-136,0,22113,22113,22113,90,2017,1,16,17,42,24,5,0,0,0,0,0,0,0,0,0,0,0,0,0,170107,2344,161221,548,0,0,0,0,0,0,0,0,0,0,0,5,1,3,TRUE,FALSE,FALSE,FALSE,FALSE,TRUE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,TRUE,TRUE,TRUE,TRUE,FALSE,FALSE,FALSE,TRUE,TRUE,TRUE,TRUE,TRUE,TRUE,TRUE,TRUE,TRUE,TRUE,TRUE,TRUE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,TRUE,TRUE,TRUE,TRUE,TRUE,TRUE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,TRUE,TRUE,FALSE,FALSE,TRUE,TRUE,TRUE,TRUE,TRUE,TRUE,FALSE,FALSE,FALSE,TRUE,TRUE,FALSE,TRUE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,TRUE,TRUE,FALSE,TRUE,TRUE,TRUE,FALSE,TRUE,TRUE,TRUE,FALSE,FALSE,TRUE,TRUE,TRUE,TRUE,TRUE,TRUE,FALSE,FALSE,FALSE,0,0,2017-01-16 17:42:24,2017-01-07 23:44:00,2016-12-21 05:48:00,True,False,False,False,False,False,FALSE,FALSE,FALSE,FALSE,TRUE,TRUE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,121160128,0,0,0,0,0,0,0,0,56,2145034.000,12798,30,0,0,0,0,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,0.00,0.00,0,0,0,249.37,7.80,27.79,28.10,30.10,30.00,30.00,30.00,30.00,30.00,8.60,10.19,199909.21,217.00,278.20,128.00,199850.00,4.50,4.65,FALSE,FALSE,0,0
