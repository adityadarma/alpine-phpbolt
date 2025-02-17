ARG PHP_VERSION

FROM adityadarma/alpine-php-nginx:${PHP_VERSION}

ARG PHP_NUMBER
USER root

COPY bolt/php${PHP_NUMBER}/bolt.so /usr/lib/php${PHP_NUMBER}/modules/bolt.so
RUN echo "extension=bolt.so" > /etc/php${PHP_NUMBER}/conf.d/00_bolt.ini

USER nobody
# RUN php -m | grep bolt