# Dump jvm heap to given file
# Use visualvm tool to open .hprof
jmap -dump:format=b,file=/tmp/my.hprof <pid>

# View top 100 objects
jmap -histo:live <pid> | head -n 100