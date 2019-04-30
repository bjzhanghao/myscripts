#创建用户并指定权限
#用 % 替代 localhost 可以允许远程访问数据库
CREATE USER 'newuser'@'localhost' IDENTIFIED BY 'password';
GRANT ALL PRIVILEGES ON *.* TO 'newuser'@'localhost';
FLUSH PRIVILEGES;

#只限制用户具有访问某个表的权限
GRANT type_of_permission ON database_name.table_name TO ‘username’@'localhost’;

#参考
#https://www.digitalocean.com/community/tutorials/how-to-create-a-new-user-and-grant-permissions-in-mysql