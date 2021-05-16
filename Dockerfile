FROM centos:latest
MAINTAINER mistryparas15@gmail.com
RUN yum install -y http \
  zip \
  unzip
ADD https://www.free-css.com/assets/files/free-css-templates/download/page247/kindle.zip
WORKDIR /var/www/html
RUN unzip kindle.zip
RUN cp -rvf markups-kindle
RUN rm -rf __MACSOX markups-kindle kindle.zip
CMD ["/usr/sbin/httpd","-D", "FOREGROUND"]
EXPOSE 80
