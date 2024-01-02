# Use Debian Bullseye as the base image
FROM debian:bullseye

# Install necessary packages
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

# Create directory for php-fpm socket
RUN mkdir -p /run/php && \
    chown www-data:www-data /run/php

# Download and install WordPress
WORKDIR /var/www/html
RUN curl -O https://wordpress.org/latest.tar.gz && \
    tar -xvzf latest.tar.gz && \
    rm latest.tar.gz && \
    chown -R www-data:www-data /var/www/html

# Your additional configuration if needed
# For example, you might want to copy a custom php.ini
# COPY custom-php.ini /etc/php/7.4/fpm/conf.d/custom-php.ini

# Expose the port used by php-fpm (9000 by default)
EXPOSE 9000

# Start php-fpm
CMD ["php-fpm7.4", "--nodaemonize"]

