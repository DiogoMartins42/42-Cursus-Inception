FROM debian:bullseye

RUN apt update
RUN apt upgrade -y
RUN apt install wget -y \
php7.4 \
php-fpm \
php-mysql \
mariadb-client

RUN wget https://wordpress.org/wordpress-6.3.1.tar.gz -P /var/www
RUN cd /var/www && tar -xzf wordpress-6.3.1.tar.gz && rm wordpress-6.3.1.tar.gz
COPY ./configs/wp-config.php /var/www/html/
RUN	chown -R root:root /var/www/wordpress

RUN wget https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
RUN chmod +x wp-cli.phar
RUN mv wp-cli.phar /usr/local/bin/wp

COPY ./start/auto_setup.sh /tmp/

EXPOSE 9000

ENTRYPOINT [ "sh", "/tmp/auto_setup.sh" ]