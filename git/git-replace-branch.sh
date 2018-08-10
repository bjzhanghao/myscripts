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


#另一种方法是用ours策略做merge
#适用于当没有权限直接push -f的时候（即必须通过pull request的时候）
git checkout dev
git checkout -b dev_2
git merge -s ours master
git push origin dev_2
#此时提交一个PR将dev_2合并到dev
#上面的PR合并后，再提交一个PR将dev合并到master就不会有冲突了