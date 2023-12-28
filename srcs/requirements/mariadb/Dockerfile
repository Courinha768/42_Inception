FROM	debian:bullseye

RUN	apt-get update
RUN	apt-get install -y mariadb-server
# RUN	apt-get -y install systemctl

COPY ./tools/script.sh /
COPY ./tools/50-server.cnf /etc/mysql/mariadb.conf.d/
# COPY ./tools/init.sql /mariadb-conf.d/init.sql
# COPY ./conf /etc/mysql/my.cnf

RUN chmod +x /script.sh 

CMD ["./script.sh"]