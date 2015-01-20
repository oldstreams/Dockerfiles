FROM greatfox/ssh
MAINTAINER Liang Dong <greatfox@gmail.com>

RUN apt-get -y install apache2

RUN echo "/usr/bin/service apache2 start\n" >> /initrc

EXPOSE 80

