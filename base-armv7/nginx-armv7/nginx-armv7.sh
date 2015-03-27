#!/bin/sh

docker run -i -t -p 80:80/tcp $* "greatfox/nginx-armv7" 

