FROM debian:bullseye

RUN apt update

RUN apt install mariadb-server -y

RUN mkdir -p /run/mysqld && chown -R mysql:mysql /run/mysqld

COPY conf/50-server.cnf	/etc/mysql/mariadb.conf.d/50-server.cnf
COPY ./start/mysql_setup.sh /tmp/mysql_setup.sh

EXPOSE 3306

ENTRYPOINT ["sh" , "/tmp/mysql_setup.sh"]