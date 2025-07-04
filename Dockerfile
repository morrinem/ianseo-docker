FROM php:8.4.10-apache

COPY run_ianseo_docker.sh /tmp
RUN chmod +x /tmp/run_ianseo_docker.sh
COPY Ianseo_20250210.zip /tmp
#COPY ianseo_account_setup.sql /tmp

RUN apt-get update && apt-get install -y \
		libfreetype-dev \
		libjpeg62-turbo-dev \
		libpng-dev \
	&& docker-php-ext-configure gd --with-freetype --with-jpeg \
	&& docker-php-ext-install gd mysqli
RUN apt-get install unzip

#RUN mysql -u root db < /tmp/ianseo_account_setup.sql
RUN /tmp/run_ianseo_docker.sh