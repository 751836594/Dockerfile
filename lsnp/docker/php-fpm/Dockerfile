FROM php:7.2-fpm

LABEL maintainer="Steven Lu <751836594@qq.com>"

ENV TZ=Asia/Shanghai

ENV PHALCON_VERSION=3.4.0

RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone \
    && curl -v -sSL "https://codeload.github.com/phalcon/cphalcon/tar.gz/v${PHALCON_VERSION}" | tar -xz \
    && cd cphalcon-${PHALCON_VERSION}/build \
    && ./install \
    && cp ../tests/_ci/phalcon.ini $(php-config --configure-options | grep -o "with-config-file-scan-dir=\([^ ]*\)" | awk -F'=' '{print $2}') \
    && cd ../../ \
    && rm -r cphalcon-${PHALCON_VERSION} \
    && apt-get -y update  \
    && apt-get install -y procps vim wget libpng-dev libmemcached-dev libpcre3-dev libjpeg-dev libpq-dev libxml2-dev \
    && pecl install redis-3.1.5.tgz  &&   rm -rf redis-3.1.5.tgz \
    && pecl install swoole \
    && docker-php-ext-install  pdo_mysql pdo_pgsql pcntl bcmath \
    && docker-php-ext-enable redis \
    && docker-php-ext-enable swoole


EXPOSE 9000 9501
WORKDIR /var/www/html