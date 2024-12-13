wp core install --url="$DOMAIN" \
    --title="My WordPress Site" \
    --admin_user="$WP_ADMIN" \
    --admin_password="$WP_ADMIN_PASSWORD" \
    --admin_email="$WP_ADMIN_EMAIL" \
    --path='/var/www/wordpress' \
    --allow-root
wp config create --allow-root \
    --dbname=$MYSQL_DATABASE \
    --dbuser=$MYSQL_USER \
    --dbpass=$MYSQL_PASSWORD \
    --dbhost=localhost \
    --path='/var/www/wordpress'
/usr/sbin/php-fpm7.4 -F