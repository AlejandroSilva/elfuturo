FROM php:7-fpm

# MySQL configuration PDO driver
#RUN apt-get update && apt-get install -y libmcrypt-dev mysql-client \
#    && docker-php-ext-install mcrypt pdo_mysql

# PostgreSQL PDO driver
RUN apt-get update && apt-get install -y libmcrypt-dev libpq-dev \
    && docker-php-ext-install mcrypt pdo_pgsql