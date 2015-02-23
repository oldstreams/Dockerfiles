#!/bin/sh

docker run -i -t -p 1194:1194 --privileged $* "greatfox/openvpn"

