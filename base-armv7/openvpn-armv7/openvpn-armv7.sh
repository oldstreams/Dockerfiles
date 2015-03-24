#!/bin/sh

docker run -i -t -p 1194:1194/udp --privileged $* "greatfox/openvpn-armv7"

