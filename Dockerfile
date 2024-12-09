FROM php:7.4-apache

RUN a2enmod rewrite

RUN docker-php-ext-install mysqli pdo_mysql

RUN curl -sL https://deb.nodesource.com/setup_16.x | bash - && \
    apt-get update && \
    apt-get install -y nodejs && \
    npm install -g gulp-cli

RUN apt-get update && apt-get install -y \
    python2 \
    build-essential \
    g++ \
    make \
    libssl-dev \
    zlib1g-dev \
    libpng-dev \
    libjpeg-dev \
    libgif-dev

WORKDIR /var/www/html

COPY . .

RUN npm install

EXPOSE 80
