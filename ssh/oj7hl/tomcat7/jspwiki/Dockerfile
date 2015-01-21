FROM greatfox/tomcat7
MAINTAINER Liang Dong <greatfox@gmail.com>

RUN rm -f /var/lib/tomcat7/ROOT
RUN wget -o /var/lib/tomcat7/webapps/ROOT.war http://archive.apache.org/dist/jspwiki/2.10.1/binaries/JSPWiki.war
RUN wget -o /tmp/jspwiki-wikipages-zh_CN-2.10.1.zip http://archive.apache.org/dist/jspwiki/2.10.1/wikipages/jspwiki-wikipages-zh_CN-2.10.1.zip

RUN mkdir -p /p/web/www-data
RUN mkdir /p/tmp
RUN chown -R tomcat7:tomcat7 /p

RUN apt-get -y install unzip
RUN unzip -d /p/web/www-data/ /tmp/jspwiki-wikipages-zh_CN-2.10.1.zip
RUN mv /p/web/www-data/jspwiki-wikipages-zh_CN-2.10.1 /p/web/www-data/jspwiki

