FROM debian:bullseye

RUN apt update
RUN apt upgrade -y
RUN apt install wget -y
RUN apt install php7.4 -y
RUN apt install php-fpm -y
RUN apt install php-mysql -y
RUN apt install mariadb-client -y

RUN php -v || php-fpm -v
RUN mkdir -p /var/www/html && chown -R www-data:www-data /var/www/html

RUN wget https://wordpress.org/wordpress-6.3.1.tar.gz -P /var/www
RUN cd /var/www && tar -xzf wordpress-6.3.1.tar.gz && rm wordpress-6.3.1.tar.gz
COPY ./configs/wp-config.php /var/www/html/

EXPOSE 9000

ENTRYPOINT [ "/usr/sbin/php-fpm7.4" "-F" ]