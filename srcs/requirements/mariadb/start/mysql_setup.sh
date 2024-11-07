service mariadb start;
mariadb -uroot -e "CREATE DATABASE IF NOT EXISTS \`${MYSQL_DATABASE}\`;"
mariadb -uroot -e "CREATE USER IF NOT EXISTS \`${MYSQL_USER}\`@'localhost' IDENTIFIED BY '${MYSQL_PASSWORD}';"
mariadb -uroot -e "GRANT ALL PRIVILEGES ON \`${MYSQL_DATABASE}\`.* TO \`${MYSQL_USER}\`@'%' IDENTIFIED BY '${MYSQL_PASSWORD}';"
mariadb -uroot -e "ALTER USER 'root'@'localhost' IDENTIFIED BY '${MYSQL_ROOT_PASSWORD}';"
mariadb -uroot -e "FLUSH PRIVILEGES;"
mariadb-admin -uroot -p$MYSQL_ROOT_PASSWORD shutdown
mysqld_safe