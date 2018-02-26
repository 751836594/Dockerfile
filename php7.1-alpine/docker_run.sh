#!/usr/bin/env bash
docker run \
    --name=php \
    -d \
    -p 80:80 \
    -v `pwd`/supervisor:/etc/supervisor.d \
    -v `pwd`/work/:/run/nginx/work  \
    -v `pwd`/nginx/web.conf:/etc/nginx/conf.d/web.conf  \
    alpine/php