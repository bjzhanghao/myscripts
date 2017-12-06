#检出分支的同时，让本地分支跟踪远程分支
#这样在执行git push时，本地分支内容会自动push到相应的远程分支
git checkout --track dev

#若checkout时没有指定跟踪远程分支
#可以使用branch命令设置
git branch --set-upstream origin/dev

#查看本地branch的upstream
git branch -vv