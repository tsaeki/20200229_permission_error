FROM php:7.3-apache

RUN apt-get update && apt-get install -y \
    libpng-dev libmemcached-dev libmcrypt-dev \
    && docker-php-ext-install pdo_mysql gd \
    && pecl install memcached-3.1.5 redis-5.1.1 mcrypt-1.0.3 \
    && docker-php-ext-enable memcached redis mcrypt
