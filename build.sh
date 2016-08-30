#!/bin/bash

set -ex

IMAGE=roryhunter/es-tools

docker build --pull -t $IMAGE:latest .

VERSION=`docker run -it --rm $IMAGE:latest node --version | sed -e 's/[^a-zA-Z0-9._-]//g'`

docker tag $IMAGE:latest $IMAGE:$VERSION

docker push $IMAGE:latest
docker push $IMAGE:$VERSION
