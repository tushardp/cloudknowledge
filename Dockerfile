FROM centos:latest
MAINTAINER tushardinkarpawar@gmail.com
RUN yum install -y httpd \ 
zip \
unzip
ADD https://www.free-css.com/assets/files/free-css-templates/download/page252/scenic.zip /var/www/html/
WORKDIR /var/www/html
RUN unzip scenic.zip
RUN cp -rvf 2099_scenic/* .
RUN rm -rf 2099_scenic scenic.zip
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 80
