FROM	debian:bullseye

RUN apt update
RUN	apt install nginx -y
RUN apt install openssl -y

COPY ./tools/nginx.conf /etc/nginx/nginx.conf

COPY ./tools/script.sh /
RUN chmod +x /script.sh 

EXPOSE 443

CMD ["./script.sh"]