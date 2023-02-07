FROM ubuntu:22.04
ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get update && apt-get install -y \
# Webserver
apache2 libapache2-mod-php php-mysql php-pgsql php-cli php-mbstring \
# Memcache for webserver
php-memcache libmemcached11 libmemcached-dev \
# Other stuff
curl git unzip wget2

EXPOSE 80
ENTRYPOINT ["/usr/sbin/apache2ctl", "-D", "FOREGROUND", "-k", "start"]
