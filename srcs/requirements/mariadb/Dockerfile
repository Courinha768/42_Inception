FROM debian:bullseye

RUN	apt-get update
RUN	apt-get install -y mariadb-server
RUN apt-get install -y mariadb-client

RUN mkdir -p /var/run/mysqld
RUN chown -R mysql:mysql /var/run/mysqld

COPY ./tools/50-server.cnf /etc/mysql/mariadb.conf.d/50-server.cnf
COPY ./tools/script.sh /

EXPOSE 3306

CMD ["./script.sh"]