#!/bin/bash

mysqld --user=mysql --initialize-insecure --datadir=/var/lib/mysql

mysqld --user=mysql --socket=/var/run/mysqld/mysqld.sock &

echo "CREATE DATABASE IF NOT EXISTS $MYSQL_DATABASE ;" > db1.sql
echo "CREATE USER IF NOT EXISTS '$MYSQL_USER'@'%' IDENTIFIED BY '$MYSQL_PASSWORD' ;" >> db1.sql
echo "GRANT ALL PRIVILEGES ON $MYSQL_DATABASE.* TO '$MYSQL_USER'@'%' ;" >> db1.sql
echo "ALTER USER 'root'@'localhost' IDENTIFIED BY '12345' ;" >> db1.sql
echo "FLUSH PRIVILEGES;" >> db1.sql

mysql < db1.sql

mysqladmin shutdown

mysqld --user=mysql --socket=/var/run/mysqld/mysqld.sock
