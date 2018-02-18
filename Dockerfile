FROM alpine:latest
LABEL maintainer "marco@nelli.tech"

ADD https://pagekite.net/pk/pagekite.py /usr/local/bin
RUN apk --update --no-cache add python

VOLUME /root/

COPY docker-entrypoint.sh /usr/local/bin/
ENTRYPOINT ["docker-entrypoint.sh"]

EXPOSE 80

CMD ["pagekite.py"]
