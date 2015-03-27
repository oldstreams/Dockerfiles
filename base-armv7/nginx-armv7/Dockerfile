FROM greatfox/base-armv7
MAINTAINER Liang Dong <greatfox@gmail.com>

RUN pacman -Sy --noconfirm nginx
RUN echo '/usr/sbin/nginx' >> /initrc

EXPOSE 80/tcp
