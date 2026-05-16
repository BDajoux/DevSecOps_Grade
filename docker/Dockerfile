FROM wordpress:6.9.4-php8.2-apache

# Basic hardening: Apache rules, headers, and startup cleanup
COPY docker/wordpress/.htaccess /var/www/html/.htaccess
COPY docker/wordpress/apache-hardening.conf /etc/apache2/conf-enabled/zz-hardening.conf
COPY docker/wordpress/entrypoint-hardening.sh /usr/local/bin/entrypoint-hardening.sh

RUN chmod +x /usr/local/bin/entrypoint-hardening.sh \
	&& a2enmod headers \
	&& rm -f /var/www/html/readme.html /var/www/html/xmlrpc.php /var/www/html/wp-cron.php

ENTRYPOINT ["/usr/local/bin/entrypoint-hardening.sh"]
CMD ["apache2-foreground"]
