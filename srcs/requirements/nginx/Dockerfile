FROM debian:bullseye

ARG NGINX_KEY
ARG NGINX_CSR

RUN apt update
RUN apt install -y nginx

RUN apt install -y openssl 
RUN openssl req -new -x509 -newkey rsa:2048 -nodes \
        -out $NGINX_CSR \
        -keyout $NGINX_KEY \
        -subj "/C=PT/ST=Porto/L=Porto/O=Diogo Martins/OU=42 Porto/CN=www.dmanuel-.42.fr"

RUN mkdir -p /var/run/nginx
COPY conf/nginx.conf /etc/nginx/nginx.conf

RUN chmod 755 /var/www/html
RUN chown -R www-data:www-data /var/www/html
EXPOSE 443

ENTRYPOINT ["nginx", "-g", "daemon off;"]
