FROM	debian:bullseye

RUN	apt update -y
RUN	apt install nginx -y
RUN	apt install openssl -y

COPY	./tools/script.sh .

RUN	chmod +x ./script.sh

EXPOSE 443

CMD	./script.sh