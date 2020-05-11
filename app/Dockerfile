FROM php:7.1-apache

RUN \
  { apt-get update; \
    apt-get install -y zlib1g-dev libzip-dev \
    libwebp-dev \
    libjpeg62-turbo-dev \
    libpng-dev libxpm-dev \
    libfreetype6-dev ; \
    docker-php-ext-install mbstring; \
    docker-php-ext-install zip; \
    docker-php-ext-install mysqli; \
    docker-php-ext-configure zip; \
    docker-php-ext-configure mysqli ; \
    docker-php-ext-configure gd --with-freetype --with-jpeg \
    --with-gd \
    --with-webp-dir \
    --with-jpeg-dir \
    --with-png-dir \
    --with-zlib-dir \
    --with-xpm-dir \
    --with-freetype-dir; \
    docker-php-ext-install -j$(nproc) gd; \
  }