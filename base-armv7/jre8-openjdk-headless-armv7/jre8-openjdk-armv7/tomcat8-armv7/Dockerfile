FROM greatfox/jre8-openjdk-armv7
MAINTAINER Liang Dong <greatfox@gmail.com>

RUN pacman -Sy --noconfirm tomcat8
RUN echo '/usr/share/tomcat8/bin/catalina.sh start' >> /initrc

EXPOSE 8080
