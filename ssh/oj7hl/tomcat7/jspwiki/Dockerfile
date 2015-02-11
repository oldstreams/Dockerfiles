FROM greatfox/tomcat7
MAINTAINER Liang Dong <greatfox@gmail.com>

RUN mkdir -p /var/jspwiki/page
RUN mkdir /var/jspwiki/attachement
RUN mkdir /var/jspwiki/log
RUN chown -R tomcat7:tomcat7 /var/jspwiki

RUN wget -O /tmp/jspwiki-wikipages-zh_CN-2.10.1.zip http://archive.apache.org/dist/jspwiki/2.10.1/wikipages/jspwiki-wikipages-zh_CN-2.10.1.zip
RUN apt-get -y install unzip
RUN unzip -d /var/jspwiki/page/ /tmp/jspwiki-wikipages-zh_CN-2.10.1.zip
RUN mv /var/jspwiki/page/jspwiki-wikipages-zh_CN-2.10.1 /var/jspwiki/page/jspwiki

RUN echo 'jspwiki.fileSystemProvider.pageDir = /var/jspwiki/page' >> /usr/share/tomcat7/lib/jspwiki-custom.properties
RUN echo 'jspwiki.basicAttachmentProvider.storageDir = /var/jspwiki/attachment' >> /usr/share/tomcat7/lib/jspwiki-custom.properties
RUN echo 'log4j.appender.FileLog.File = /var/jspwiki/log/jspwiki.log' >> /usr/share/tomcat7/lib/jspwiki-custom.properties

RUN wget -O /var/lib/tomcat7/webapps/ROOT.war http://archive.apache.org/dist/jspwiki/2.10.1/binaries/JSPWiki.war
RUN rm -rf /var/lib/tomcat7/webapps/ROOT
