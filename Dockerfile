FROM alpine

MAINTAINER Rory Hunter <roryhunter2@gmail.com>

RUN set -ex \
    && apk add --no-cache curl nodejs \
    && npm install --global elasticsearch-tools

CMD [ "node" ]
