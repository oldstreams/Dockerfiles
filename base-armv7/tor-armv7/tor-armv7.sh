#!/bin/sh

docker run -i -t -p 9050:9050/tcp -p 9051:9051/tcp $* "greatfox/tor-armv7" 

