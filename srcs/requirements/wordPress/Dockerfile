FROM debian:bullseye


RUN apt-get update -y \
	&& apt-get install -y iputils-ping \
    && apt-get install -y php-fpm php-mysql php-gd php-curl php-xml \
    && apt-get install -y curl


COPY ./tools/script.sh /
COPY ./tools/wp-config.php /

CMD [ "/script.sh" ]
