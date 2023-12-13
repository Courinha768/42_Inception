FROM	debian:bullseye

RUN	apt update -y
RUN	apt install nginx -y
RUN	apt install openssl -y

# nginx SSL
# RUN mkdir /etc/nginx/ssl
# RUN openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout /etc/ssl/private/nginx-selfsigned.key -out /etc/ssl/certs/nginx-selfsigned.crt -subj "/C=MO/L=KH/O=1337/OU=student/CN=[sahafid.1337.ma](http://sahafid.42.ma/)"

# COPY	./tools/nginx.conf /etc/nginx
COPY	./tools/script.sh .

EXPOSE 443

CMD	./script.sh