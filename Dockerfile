FROM php:8.2-fpm AS builder

RUN apt-get update \
    && apt-get install -y --no-install-recommends libpq-dev unzip \
    && docker-php-ext-install pdo_pgsql

COPY --from=composer:2 /usr/bin/composer /usr/bin/composer
WORKDIR /var/www/html
COPY ./ /var/www/html
RUN composer install --no-dev --optimize-autoloader --no-interaction

FROM php:8.2-fpm
WORKDIR /var/www/html
COPY --from=builder /var/www/html /var/www/html
EXPOSE 9000
CMD ["php-fpm"]
