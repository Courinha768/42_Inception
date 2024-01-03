FROM debian:bullseye

RUN apt-get update && \
    apt-get install -y \
        php7.4-fpm \
        php7.4-mysql \
        php7.4-curl \
        php7.4-gd \
        php7.4-intl \
        php7.4-mbstring \
        php7.4-xml \
        php7.4-zip \
        curl \
        unzip \
        && \
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

