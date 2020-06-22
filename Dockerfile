FROM  centos:latest

RUN yum install  net-tools  -y
RUN yum install  sudo  -y
Run yum install  curl  -y
RUN yum install  git  -y
RUN yum install  php  -y
RUN yum install  python36  -y
RUN yum install  httpd   -y

COPY  *.html  /var/www/html/

COPY  *.php  /var/www/html/
RUN   mkdir  /vishpy
COPY  *.py  /vishpy/

RUN  yum  install  /sbin/service  -y
EXPOSE 80
CMD  /usr/sbin/httpd  -D FOREGROUND  &&  /bin/bash  && python3.6 /vishpy/*.py
