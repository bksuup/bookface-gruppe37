FROM ubuntu
ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get update && apt-get install -y apache2 libapache2-mod-php php-mysql git php-memcache libmemcached11 libmemcached-dev curl php-cli php-mbstring unzip php-pgsql glusterfs-client wget2 prometheus-apache-exporter supervisor

RUN rm /var/www/html/index.html
RUN mkdir /var/www/html/images
ADD code/* /var/www/html/
ADD config.php /var/www/html

EXPOSE 80
ENTRYPOINT ["/usr/sbin/apache2ctl", "-D", "FOREGROUND", "-k", "start"]