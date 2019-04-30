#更换远程repository地址（更换git库时有用）
git remote set-url origin http://username@mydomain.com/scm/myproject.git

git push -u origin --all
git push origin --tags

#查看当前repository地址
git remote -v
#origin  http://username@mydomain.com/scm/myproject.git (fetch)
#origin  http://username@mydomain.com/scm/myproject.git (push)
