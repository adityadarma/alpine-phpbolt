# Encrypt PHP source with phpbolt

This image get from source [Alpine Php Nginx](https://github.com/adityadarma/alpine-php-nginx)

## Build Manual
- docker build --build-arg PHP_VERSION=8.1 --build-arg PHP_NUMBER=81 -t adityadarma/alpine-phpbolt:8.1 -f Dockerfile .
- docker build --build-arg PHP_VERSION=8.2 --build-arg PHP_NUMBER=82 -t adityadarma/alpine-phpbolt:8.2 -f Dockerfile .
- docker build --build-arg PHP_VERSION=8.3 --build-arg PHP_NUMBER=83 -t adityadarma/alpine-phpbolt:8.3 -f Dockerfile .

### Push to Docker Hub
- docker push adityadarma/alpine-phpbolt:8.1
- docker push adityadarma/alpine-phpbolt:8.2
- docker push adityadarma/alpine-phpbolt:8.3

## Check Modules
php -m | grep bolt