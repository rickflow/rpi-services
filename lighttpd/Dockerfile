FROM alpine:latest
WORKDIR /root/
RUN mkdir -p /var/www/app
RUN apk --no-cache add lighttpd
COPY lighttpd.conf /root/
CMD lighttpd -D -f lighttpd.conf