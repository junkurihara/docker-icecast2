FROM alpine:3.9

MAINTAINER Jun Kurihara <junkurihara@users.noreply.github.com>

RUN apk add --no-cache icecast

EXPOSE 80
EXPOSE 8080

COPY /start.sh /bin/start.sh
RUN chmod 755 /bin/start.sh

VOLUME ["/var/log/icecast"]

CMD ["/bin/start.sh"]

