#查看当前repository地址
git remote -v
#origin  http://username@mydomain.com/scm/myproject.git (fetch)
#origin  http://username@mydomain.com/scm/myproject.git (push)

#更换远程repository地址（更换git库时有用）
cd existing_repo
git remote rename origin old-origin (可选)
git remote add origin https://host/myproject/myproject.git
git push -u origin --all
git push -u origin --tags
