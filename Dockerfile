FROM alpine

MAINTAINER Rory Hunter <roryhunter2@gmail.com>

RUN set -x && apk add --no-cache nodejs

CMD [ "node" ]
