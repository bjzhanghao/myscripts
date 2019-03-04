#以图形化方式查看git日志
git log --color --graph --decorate -M --pretty=oneline --abbrev-commit -M
git log --pretty=format:"%h %s" --graph

#或使用git自带的图形化工具
gitk