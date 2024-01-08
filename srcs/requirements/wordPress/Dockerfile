FROM debian:bullseye

RUN apt update && \
	apt install -y unzip \
		php \
		curl \
		wget \
		redis \
		php-redis \
		php-mysqli \
		php-fpm \
		php-cgi \
		php-curl \
		php-gd \
		php-mbstring \
		php-xml \
		php-xmlrpc \
		php-soap \
		php-intl \
		php-zip \
		default-mysql-client && \
    rm -rf /var/lib/apt/lists/*

RUN mkdir -p /run/php && \
    chown www-data:www-data /run/php

WORKDIR /var/www/html
RUN curl -O https://wordpress.org/latest.tar.gz && \
    tar -xvzf latest.tar.gz && \
    rm latest.tar.gz && \
    chown -R www-data:www-data /var/www/html

EXPOSE 9000

CMD ["php-fpm7.4", "--nodaemonize"]

