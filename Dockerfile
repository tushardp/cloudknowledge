FROM centos:latest
MAINTAINER tushardinkarpawar@gmail.com
RUN yum install -y httpd \ 
zip \
unzip
ADD https://www.free-css.com/assets/files/free-css-templates/download/page252/itsy.zip /var/www/html/
WORKDIR /var/www/html
RUN unzip itsy.zip
RUN cp -rvf itsy/* .
RUN rm -rf itsy itsy.zip
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 80
