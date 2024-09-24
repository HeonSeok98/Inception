
FROM debian:buster

RUN apt-get update -y
RUN apt-get install nginx -y
RUN apt-get clean
RUN rm -rf /var/lib/apt/lists/*

COPY ./conf/nginx.conf /etc/nginx/nginx.conf

EXPOSE 443

CMD ["nginx", "-g", "daemon off;"]
