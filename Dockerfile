FROM crystalmatrix/crystal-matrix-base:latest

MAINTAINER "Alexandru Berce" <alex@devaccent.com>

# copy the files from host to container
WORKDIR /var/www/app

# Install dependencies
COPY composer.json composer.json
#COPY composer.lock composer.lock
RUN composer install --prefer-dist --no-scripts --no-dev --no-autoloader && rm -rf /root/.composer

COPY . .

RUN echo "ServerName crystal-matrix.com" >> /etc/httpd/conf/httpd.conf

# Finish composer
RUN composer dump-autoload --no-scripts --no-dev --optimize