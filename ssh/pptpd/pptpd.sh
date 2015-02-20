#!/bin/sh

docker run -i -t -p 1723:1723 --privileged $* "greatfox/pptpd" 

