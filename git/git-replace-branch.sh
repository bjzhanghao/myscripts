#用一个分支branch1的内容完全替换另一个分支branch2
#替换完成后，两个分支内容都是原来branch1的
git checkout branch2
git reset --hard branch1
git push -f origin branch2


#举例：
#用分支dev的内容完全替换另一个分支master
#替换完成后，两个分支内容都是原来dev的
git checkout master
git reset --hard dev
git push -f origin master
