FROM ubuntu:14.04

MAINTAINER apostol7

RUN apt-get update  &&  apt-get -y install tomcat7 tomcat7-admin
RUN apt-get clean

RUN sed -i -e"s/.*//" /etc/tomcat7/tomcat-users.xml && sed -i '1i <tomcat-users><user password="admin" roles="manager-script,admin" username="admin"/></tomcat-users>' /etc/tomcat7/tomcat-users.xml

RUN ln -s /var/log/tomcat7/ /usr/share/tomcat7/logs 
RUN ln -s /temp /usr/share/tomcat7/temp
RUN ln -s /etc/tomcat7/ /usr/share/tomcat7/conf 
RUN ln -s /var/lib/tomcat7/common/ /usr/share/tomcat7/common
RUN ln -s /var/lib/tomcat7/server/ /usr/share/tomcat7/server 
RUN ln -s /var/lib/tomcat7/shared/ /usr/share/tomcat7/shared

EXPOSE 8080

ADD ./realestate.war /var/lib/tomcat7/webapps/

CMD sh /usr/share/tomcat7/bin/startup.sh

