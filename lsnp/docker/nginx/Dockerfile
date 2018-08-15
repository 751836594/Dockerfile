FROM phalconphp/ubuntu:14.04

LABEL maintainer="Steven Lu <751836594@qq.com>"

RUN add-apt-repository -y ppa:nginx/stable \
	&& apt-get update -y \
	&& apt-get upgrade -y \
	&& apt-get install -y --force-yes --no-install-recommends \
		nginx \
	&& mkdir /etc/nginx/global \
	&& mkdir /etc/nginx/certs

ADD etc/restrict.conf /etc/nginx/global/restrict.conf
ADD etc/nginx.conf /etc/nginx/nginx.conf
ADD etc/server.conf /etc/nginx/conf.d/server.conf

RUN usermod -u 1000 www-data \
	&& chown -R www-data:www-data /var/lib/nginx \
    && rm -rf /etc/nginx/sites-enabled/* \
    && ln -sf /dev/stdout /var/log/nginx/access.log \
	&& ln -sf /dev/stderr /var/log/nginx/error.log \
	&& apt-get clean \
	&& rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

VOLUME ["/etc/nginx/sites-enabled", "/etc/nginx/certs", "/etc/nginx/conf.d"]

EXPOSE 80 443

WORKDIR /var/www/html

CMD ["nginx", "-g", "daemon off;"]
