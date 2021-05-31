# Dump jvm heap to given file
# Use visualvm tool to open .hprof
jmap -dump:format=b,file=/tmp/my.hprof <pid>