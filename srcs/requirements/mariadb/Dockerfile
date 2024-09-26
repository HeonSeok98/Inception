
FROM	debian:buster

RUN		apt-get update -y && \
		apt-get upgrade -y && \
		apt-get -y install \
		mariadb-server \
		mariadb-client

COPY	./tools/script.sh /tmp/script.sh
COPY	./conf/50-server.cnf /etc/mysql/mariadb.conf.d/

ENTRYPOINT ["sh", "/tmp/script.sh"]

EXPOSE 3306