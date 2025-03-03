#!/usr/bin/env bash

NAME=englund/gluetun-qbittorrent-port-manager
VERSION=`cat version`

docker buildx build -t $NAME:$VERSION -t $NAME:latest --label "version=$VERSION" --load .
