# 同步本地目录到另一个目录
# -r 表示递归处理，-z 表示压缩传输 -a 表示保留源文件属性 -v 表示输出少量信息
rsync -avzr <src> <dst>

# 注意<src>要以/结尾否则会在<dst>下多一层<src>目录
#
# 例如下面这样会在/tmp2下生成两个101目录，即/tmp2/101/101：
# rsync -avzr /tmp/101 /tmp2/101
#
# 在<src>以/结尾后就没有这个问题了 ：
# rsync -avzr /tmp/101/ /tmp2/101 
#
# 或者等价的这样写：
# rsync -avzr /tmp/101 /tmp2