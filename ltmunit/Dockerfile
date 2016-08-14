FROM ubuntu:xenial
MAINTAINER Liang Dong <greatfox@gmail.com>

#RUN mv /etc/apt/sources.list /etc/apt/sources.list.orig
#RUN sed 's/arch/cn\.arch/' /etc/apt/sources.list.orig > /etc/apt/sources.list
RUN apt-get update
RUN apt-get -y upgrade
RUN apt-get -y install tomcat8 mariadb-server

ADD https://gist.github.com/oldstreams/4357bc22226ee5140732d3c028cfe673/raw/2cf302ccc7c109231024e7f3fd0cb493fea1bfb3/Apache%2520Tomcat%25208%2520Start%2520stop%2520script%2520init.d%2520script /etc/init.d/tomcat

RUN touch /initrc
RUN echo "/usr/sbin/service mysql start" >> /initrc
RUN echo "/usr/sbin/service tomcat8 start" >> /initrc

RUN locale-gen en_US.UTF-8
ENV LANG en_US.UTF-8

EXPOSE 8080
CMD ["/bin/bash", "--rcfile", "/initrc"]
