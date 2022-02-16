FROM php:8.0-fpm

RUN apt-get update && apt-get install -y \
    git \
    libzip-dev \
    unzip \
    zip \
    libpng-dev \
    imagemagick

RUN docker-php-ext-install mysqli pdo_mysql gd

RUN curl --silent --show-error https://getcomposer.org/installer | php && \
    mv composer.phar /usr/local/bin/composer
