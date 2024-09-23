
FROM debian:bullseye

RUN apt update -y && \
    apt install php-fpm php-mysql -y && \
    apt install curl -y

COPY ./tools/script.sh / \
     ./tools/wp-config.php /

CMD [ "/script.sh" ]
