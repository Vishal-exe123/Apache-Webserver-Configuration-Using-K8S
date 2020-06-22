FROM  centos:latest

RUN yum install  net-tools  -y
RUN yum install  sudo  -y
Run yum install  curl  -y
RUN yum install  git  -y
RUN yum install  php  -y
RUN yum install  httpd   -y

COPY  *.html  /var/www/html/

COPY  *.php  /var/www/html/

RUN  yum  install  /sbin/service  -y
EXPOSE 80
CMD  /usr/sbin/httpd  -D FOREGROUND  &&  /bin/bash  
