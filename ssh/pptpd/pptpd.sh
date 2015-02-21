#!/bin/sh

docker run -i -t -p 47:47 -p 1723:1723 --privileged $* "greatfox/pptpd" 

