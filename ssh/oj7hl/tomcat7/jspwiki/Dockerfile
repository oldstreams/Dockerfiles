FROM greatfox/tomcat7
MAINTAINER Liang Dong <greatfox@gmail.com>

RUN mkdir -p /p/web/www-data
RUN mkdir /p/tmp
RUN chown -R tomcat7:tomcat7 /p

RUN wget -O /tmp/jspwiki-wikipages-zh_CN-2.10.1.zip http://archive.apache.org/dist/jspwiki/2.10.1/wikipages/jspwiki-wikipages-zh_CN-2.10.1.zip
RUN apt-get -y install unzip
RUN unzip -d /p/web/www-data/ /tmp/jspwiki-wikipages-zh_CN-2.10.1.zip
RUN mv /p/web/www-data/jspwiki-wikipages-zh_CN-2.10.1 /p/web/www-data/jspwiki

RUN wget -O /var/lib/tomcat7/webapps/ROOT.war http://archive.apache.org/dist/jspwiki/2.10.1/binaries/JSPWiki.war
RUN rm -rf /var/lib/tomcat7/webapps/ROOT
