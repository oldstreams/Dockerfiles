FROM greatfox/base-armv7

RUN pacman -Sy --noconfirm openvpn

RUN echo '/usr/sbin/openvpn --daemon --config /etc/openvpn/server.conf --cd /etc/openvpn' >> /initrc

EXPOSE 1194/udp
