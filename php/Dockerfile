FROM centos:7
MAINTAINER steven "751836594@qq.com"
RUN yum update -y &&  rpm -Uvh https://mirrors.tuna.tsinghua.edu.cn/epel/epel-release-latest-7.noarch.rpm && rpm -Uvh https://sp.repo.webtatic.com/yum/el7/webtatic-release.rpm && yum install -y mod_php71w php71w-cli php71w-fpm  php71w-common php71w-gd php71w-mbstring php71w-mcrypt php71w-mysqlnd php71w-xml php71w-redis php71w-pdo php71w-pdo_mysql php71w-pdo_pgsql

RUN yum install -y \
	wget \
	sed \
	vim \
	gcc \
	gcc-c++ \
	gd \
	gd-devel \
	gmp-devel \
	epel-release \
	net-tools \
	ntpdate \
	ntp \
	openssh-clients \
	curl \
	crontabs \
	git \
	nginx \
	httpd \
	squid
RUN sed -i 's/http_access deny all/#http_access deny all/g' /etc/squid/squid.conf
RUN cd /tmp && wget -O get-pip.py https://bootstrap.pypa.io/get-pip.py \
 && python get-pip.py
RUN pip install supervisor
EXPOSE 80 443 3128
WORKDIR /data/work/code