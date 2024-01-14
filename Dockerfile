FROM php:7.4-fpm

LABEL maintainer="Romain & Flabou"


# MAJ
RUN apt-get update && apt-get install -y \
    libonig-dev \
    && docker-php-ext-install pdo_mysql mbstring exif pcntl bcmath 

# Installez Composer
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

# Installez node.js et npm
RUN curl -sL https://deb.nodesource.com/setup_14.x | bash -
RUN apt-get install -y nodejs

# Repertoire 
WORKDIR /var/www/html

