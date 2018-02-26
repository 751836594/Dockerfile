FROM  python:alpine3.6
MAINTAINER lujunwen "751836594@qq.com"

RUN apk update && apk upgrade \
&& apk add nginx supervisor vim sudo curl php7 php7-fpm php7-opcache php7-gd php7-mysqli php7-zlib php7-curl php7-pdo php7-pdo_mysql php7-redis \
&& mkdir -p /run/nginx && mv /etc/nginx/conf.d/default.conf /etc/nginx/conf.d/default.conf.bak && mkdir -p /etc/supertvisor.d
EXPOSE 80
WORKDIR /run/nginx/work
#启动supervisor
ENTRYPOINT ["/usr/bin/supervisord", "-n", "-c", "/etc/supervisord.conf"]