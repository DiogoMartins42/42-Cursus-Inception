FROM debian:bullseye

RUN apt update

RUN apt install mariadb-server -y

EXPOSE 3306

ENTRYPOINT ["mysqld_safe"]