FROM ubuntu:latest

LABEL maintainer=" Pig Benis The Great "

RUN echo "Current OS: $DISTRO"  
RUN apt -y update
RUN export DEBIAN_FRONTEND=noninteractive
RUN ln -fs /usr/share/zoneinfo/Europe/Berlin /etc/localtime
RUN apt-get install -y tzdata
RUN dpkg-reconfigure --frontend noninteractive tzdata
RUN apt -y install apache2 mariadb-server php php-mysqlnd wget curl 
ADD scripts /tmp/scripts
RUN /etc/init.d/mysql start && sh /tmp/scripts/mysql_se-deb.sh && mysql -uroot < /tmp/scripts/create-database.sql && mysql --password=test123 --user=test123 wordpress < /tmp/scripts/pigbenis.sql
RUN wget -nc https://de.wordpress.org/latest-de_DE.tar.gz -P /tmp/ && tar xvzf /tmp/latest-de_DE.tar.gz -C /var/www/html/
ADD /Config/wp-config.php /var/www/html/wordpress/
ADD /wordpress /tmp/wordpress
RUN cp -r /tmp/wordpress /var/www/html/
RUN chown -R www-data:www-data /var/www/html/
EXPOSE 80
CMD /etc/init.d/mysql start &&  /usr/sbin/apache2ctl -D FOREGROUND
#
