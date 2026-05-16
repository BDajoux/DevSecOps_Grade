#!/bin/sh
set -eu

# Remove sensitive files on each start (persistent volume may restore them)
rm -f /var/www/html/readme.html
rm -f /var/www/html/xmlrpc.php
rm -f /var/www/html/wp-cron.php

exec /usr/local/bin/docker-entrypoint.sh "$@"
