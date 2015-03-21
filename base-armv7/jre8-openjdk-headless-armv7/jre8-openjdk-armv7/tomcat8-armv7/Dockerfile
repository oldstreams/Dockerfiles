FROM greatfox/jre8-openjdk-armv7
MAINTAINER Liang Dong <greatfox@gmail.com>

RUN pacman -Sy --noconfirm tomcat8
RUN echo 'JSVC=/usr/sbin/jsvc /usr/share/tomcat8/bin/daemon.sh --java-home /usr/lib/jvm/default --tomcat-user tomcat8 start' >> /initrc
