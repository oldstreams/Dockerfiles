FROM greatfox/ssh
MAINTAINER Liang Dong <greatfox@gmail.com>

RUN apt-get -y install software-properties-common
RUN add-apt-repository ppa:webupd8team/java
RUN apt-get update
RUN DEBIAN_FRONTEND=noninteractive apt-get -y install oracle-java8-installer

