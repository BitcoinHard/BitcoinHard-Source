#!/usr/bin/env bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
cd $DIR/..

DOCKER_IMAGE=${DOCKER_IMAGE:-bitcoinhardpay/bitcoinhardd-develop}
DOCKER_TAG=${DOCKER_TAG:-latest}

BUILD_DIR=${BUILD_DIR:-.}

rm docker/bin/*
mkdir docker/bin
cp $BUILD_DIR/src/bitcoinhardd docker/bin/
cp $BUILD_DIR/src/bitcoinhard-cli docker/bin/
cp $BUILD_DIR/src/bitcoinhard-tx docker/bin/
strip docker/bin/bitcoinhardd
strip docker/bin/bitcoinhard-cli
strip docker/bin/bitcoinhard-tx

docker build --pull -t $DOCKER_IMAGE:$DOCKER_TAG -f docker/Dockerfile docker
