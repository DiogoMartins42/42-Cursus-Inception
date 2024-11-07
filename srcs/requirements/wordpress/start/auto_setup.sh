wp config create --allow-root \
    --dbname=$MYSWL_DATABASE \
    --dbuser=$MYSQL_USER \
    --dbpass=$MYSQL_PASSWORD \
    --dbhost=mariadb:3306 --path='/var/www/wordpress'
/usr/sbin/php-fpm7.4 -F