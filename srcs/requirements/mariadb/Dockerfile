
FROM	debian:buster

RUN apt-get update -y
RUN apt-get upgrade -y
RUN apt-get install -y mariadb-server
RUN apt-get install -y mariadb-client

COPY ./tools/script.sh /tmp/script.sh
COPY ./conf/50-server.cnf /etc/mysql/mariadb.conf.d/

ENTRYPOINT ["sh", "/tmp/script.sh"]

EXPOSE 3306
