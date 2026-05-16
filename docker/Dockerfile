FROM wordpress:6.9.4-php8.2-apache

# Basic hardening: Apache rules and headers
COPY docker/wordpress/.htaccess /var/www/html/.htaccess
COPY docker/wordpress/apache-hardening.conf /etc/apache2/conf-enabled/zz-hardening.conf

RUN a2enmod headers
