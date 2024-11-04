FROM debian:bullseye

RUN apt update
RUN apt install wget -y
RUN apt install php7.4 \
    php-fpm \
    php-mysql \
    mariadb-client -y

RUN mkdir -p /var/www/html && chown -R www-data:www-date /var/www/html

RUN wget https://wordpress.org/wordpress-6.3.1.tar.gz -P /var/www
RUN cd /var/www && tar -xzf wordpress-6.3.1.tar.gz && rm wordpress-6.3.1.tar.gz
COPY ./configs/wp-config.php /var/www/wordpress/

EXPOSE 9000

ENTRYPOINT [ "sh" ]