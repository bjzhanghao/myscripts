#用一个分支branch1的内容完全替换另一个分支branch2
#替换完成后，两个分支内容都是原来branch1的
git checkout branch2
git reset --hard branch1
git push -f origin branch2
