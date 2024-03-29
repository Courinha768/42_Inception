#!/bin/bash

sleep 15

mkdir -p /var/www/html

cd /var/www/html

if [ "$(ls -A /var/www/html)" ]; then
    rm -rf /var/www/html/*
fi

curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar 
chmod +x wp-cli.phar 
mv wp-cli.phar /usr/local/bin/wp

wp core download --allow-root

cp /wp-config.php /var/www/html/wp-config.php

if [ -e /etc/php/7.4/fpm/pool.d/www.conf ]; then
  sed -i 's/listen = \/run\/php\/php7.4-fpm.sock/listen = 9000/g' /etc/php/7.4/fpm/pool.d/www.conf
else
  echo "Error: BIG FUCKING ERROR MESSAGE"
fi

wp core install --url=$DOMAIN_NAME/ --title=$WP_TITLE --admin_user=$WORDPRESS_DB_USER --admin_password=$WORDPRESS_DB_PASSWORD --admin_email=$WP_ADMIN_EMAIL --skip-email --allow-root

wp user create $WP_USR $WP_EMAIL --role=author --user_pass=$WP_PWD --allow-root

wp theme install astra --activate --allow-root

wp plugin update --all --allow-root

mkdir -p /run/php

/usr/sbin/php-fpm7.4 -F
