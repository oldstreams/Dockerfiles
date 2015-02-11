FROM greatfox/tomcat7
MAINTAINER Liang Dong <greatfox@gmail.com>

RUN mkdir -p /var/jspwiki/page
RUN mkdir /var/jspwiki/attachment
RUN mkdir /var/jspwiki/log
RUN mkdir /var/jspwiki/work
RUN chown -R tomcat7:tomcat7 /var/jspwiki

RUN wget -O /tmp/jspwiki-wikipages-zh_CN-2.10.1.zip http://archive.apache.org/dist/jspwiki/2.10.1/wikipages/jspwiki-wikipages-zh_CN-2.10.1.zip
RUN apt-get -y install unzip
RUN unzip -d /var/jspwiki/page/ /tmp/jspwiki-wikipages-zh_CN-2.10.1.zip
RUN mv /var/jspwiki/page/jspwiki-wikipages-zh_CN-2.10.1 /var/jspwiki/page/jspwiki

RUN echo 'jspwiki.fileSystemProvider.pageDir = /var/jspwiki/page
jspwiki.basicAttachmentProvider.storageDir = /var/jspwiki/attachment
jspwiki.workDir = /var/jspwiki/work
jspwiki.encoding = UTF-8
jspwiki.translatorReader.matchEnglishPlurals = true
jspwiki.lucene.analyzer = org.apache.lucene.analysis.standard.cn.ChineseAnalyzer
jspwiki.urlConstructor = ShortURLConstructor
jspwiki.defaultprefs.template.language = cn
log4j.appender.FileLog.File = /var/jspwiki/log/jspwiki.log' >> /usr/share/tomcat7/lib/jspwiki-custom.properties

RUN wget -O /var/lib/tomcat7/webapps/ROOT.war http://archive.apache.org/dist/jspwiki/2.10.1/binaries/JSPWiki.war
RUN rm -rf /var/lib/tomcat7/webapps/ROOT

