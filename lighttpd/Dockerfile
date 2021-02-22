FROM alpine:latest
WORKDIR /root/
RUN mkdir -p /var/www/app
RUN apk --no-cache add \
    lighttpd \
    php7 \
    php7-common \
    php7-phar \
    php7-bcmath \
    php7-calendar \
    php7-mbstring \
    php7-exif \
    php7-ftp \
    php7-openssl \
    php7-zip \
    php7-sysvsem \
    php7-sysvshm \
    php7-sysvmsg \
    php7-shmop \
    php7-sockets \
    php7-zlib \
    php7-bz2 \
    php7-simplexml \
    php7-xml \
    php7-opcache \
    php7-dom \
    php7-xmlreader \
    php7-xmlwriter \
    php7-tokenizer \
    php7-ctype \
    php7-session \
    php7-fileinfo \
    php7-iconv \
    php7-json \
    php7-posix \
    php7-sqlite3 \
    php7-pgsql \
    php7-fpm
COPY lighttpd.conf /root/
RUN echo "listen = /run/php-fpm.sock" >> /etc/php7/php-fpm.conf && \
    echo "user = root" >> /etc/php7/php-fpm.conf
CMD php-fpm7 -R && lighttpd -D -f lighttpd.conf