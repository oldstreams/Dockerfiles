FROM greatfox/base-armv7
MAINTAINER Liang Dong <greatfox@gmail.com>

RUN pacman -Sy --noconfirm tor

#ADD https://storage.googleapis.com/golang/go1.4.2.src.tar.gz /root/
#COPY go1.4.2.src.tar.gz /root/
#RUN tar zxvf /root/go1.4.2.src.tar.gz -C /root

COPY meek-client /usr/local/bin/
RUN mkdir /var/log/tor
RUN chown tor:tor /var/log/tor
RUN echo -e "RunAsDaemon 1 \n\
User tor \n\
Bridge meek 0.0.2.0:2 url=https://d2zfqthxsdq309.cloudfront.net/ front=a0.awsstatic.com \n\
Bridge meek 0.0.2.0:3 url=https://az668014.vo.msecnd.net/ front=ajax.aspnetcdn.com \n\
Bridge meek 0.0.2.0:1 url=https://meek-reflect.appspot.com/ front=www.google.com \n\
ClientTransportPlugin meek exec /usr/local/bin/meek-client --log /var/log/tor/meek-client.log \n\
DataDirectory /var/lib/tor \n\
DirReqStatistics 0 \n\
#ExitNodes {US} \n\
GeoIPFile /usr/share/tor/geoip \n\
GeoIPv6File /usr/share/tor/geoip6 \n\
SocksListenAddress 0.0.0.0 \n\
UseBridges 1" > /etc/tor/torrc
RUN echo "/usr/sbin/tor" >> /initrc

EXPOSE 9050/tcp
EXPOSE 9051/tcp
