#!/usr/bin/env bash
sudo docker run \
         --name web \
         --privileged=true \
         -v /tmp:/tmp \
         -v `(cd ../;pwd)`:/usr/share/nginx/html \
         -v `pwd`/etc/nginx/conf.d:/etc/nginx/conf.d \
         -v `pwd`/etc/supervisor/conf.d:/etc/supervisor/conf.d  \
         -v `pwd`/etc/supervisor/supervisord.conf:/etc/supervisord.conf \
         -p 3122:3128 \
         -p 8080:8080 \
         -d steven/php \
         supervisord -c /etc/supervisord.conf