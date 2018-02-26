# docker_hub
个人用的docker 镜像仓库

<ul>
<li>
	新增php镜像:php7.1-alpine(php7.1+nginx+supervisor)
	<ul>
	<li>PS:镜像十一alpine为基础镜像,总镜像170M</li>
	<li>创建镜像: sh docker_build.sh</li>
	<li>生成容器: sh docker_run.sh</li>
	</ul>
</li>
<li>
	php镜像:php-fpm(7.2) + nginx + supervisor + squid + ntpdate
	<ul>
	<li>创建镜像: sh docker_build.sh</li>
	<li>生成容器: sh docker_run.sh</li>
	</ul>
</li>
<li>
	python3镜像:python3.6(alpine系统) + flask + gevent + msyql
	<ul>
	<li>创建镜像: sh docker/build-online.sh</li>
	<li>生成容器: sh docker/run-online.sh</li>
	</ul>
</li>
</ul>
	
