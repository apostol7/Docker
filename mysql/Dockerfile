FROM ubuntu:14.04

MAINTAINER apostol7

#install mysql server 5.6
RUN apt-get update  &&  apt-get -y install mysql-server-5.6
RUN apt-get clean

RUN sed -i -e"s/^bind-address\s*=\s*127.0.0.1/bind-address = 0.0.0.0/" /etc/mysql/my.cnf

RUN mkdir /opt/MySqlData && cp -r /var/lib/mysql /opt/MySqlData

ADD ./startup.sh /opt/startup.sh

EXPOSE 3306

CMD /opt/startup.sh
