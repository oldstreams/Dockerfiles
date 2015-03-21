FROM greatfox/base-armv7

RUN pacman -Sy --noconfirm openvpn

RUN echo '/usr/sbin/openvpn start' >> /initrc

EXPOSE 1194/udp
