#!/usr/bin/env bash
docker run \
	--name nginx-server \
	-d -p 8080:80 \
	-v `pwd`/html:/etc/nginx/html \
	-v `pwd`/logs:/var/log/nginx \
	-v `pwd`/conf/nginx.conf:/etc/nginx/nginx.conf \
	nginx:1.16