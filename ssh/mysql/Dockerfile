FROM greatfox/ssh
MAINTAINER Liang Dong <greatfox@gmail.com>

RUN apt-get -y install mysql-server

RUN echo 'mysqld_safe& sleep 3; mysqladmin password MustChange; mysqladmin shutdown -pMustChange; sleep 3' | /bin/sh

RUN echo "/usr/bin/service mysql start" >> /initrc

