
FROM	debian:buster

RUN apt-get update -y
RUN apt-get upgrade -y
RUN apt-get install -y nginx
RUN apt-get install -y openssl
RUN apt-get install -y vim

RUN mkdir /etc/nginx/ssl

RUN openssl req -newkey rsa:4096 -days 365 -nodes -x509 \
    -subj "/C=KR/ST=Seoul/L=Seoul/O=42Seoul/OU=Gun/CN=localhost" \
    -out /etc/nginx/ssl/heolee.42.fr.crt \
    -keyout /etc/nginx/ssl/heolee.42.fr.key

COPY conf/nginx.conf /etc/nginx/conf.d/default.conf

EXPOSE 443

ENTRYPOINT ["nginx", "-g", "daemon off;"]
