
FROM debian:buster

RUN apt-get update -y
RUN apt-get upgrade -y
RUN apt-get -y install mariadb-client
RUN apt-get -y install wget
RUN apt-get -y install curl
RUN apt-get -y install tar
RUN apt-get -y install php7.3-fpm
RUN apt-get -y install php-cli
RUN apt-get -y install php-mysql
RUN apt-get -y install vim
RUN apt-get -y install sudo

COPY ./tools/script.sh /tmp/script.sh
COPY ./conf/www.conf /etc/php/7.3/fpm/pool.d/www.conf
RUN wget https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar && chmod +x wp-cli.phar && mv wp-cli.phar /usr/bin/wp

WORKDIR	/var/www/html/wordpress
RUN mkdir -p /run/php

EXPOSE 9000

ENTRYPOINT ["sh", "/tmp/script.sh"]
