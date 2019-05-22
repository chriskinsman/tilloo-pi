#! /bin/bash
docker login
docker build -t chriskinsman/rpi-tilloo:latest-amd64 .
docker push chriskinsman/rpi-tilloo:latest-amd64

docker manifest push --purge chriskinsman/rpi-tilloo:latest
docker manifest create chriskinsman/rpi-tilloo:latest chriskinsman/rpi-tilloo:latest-amd64 chriskinsman/rpi-tilloo:latest-arm32v6
docker manifest annotate chriskinsman/rpi-tilloo:latest chriskinsman/rpi-tilloo:latest-arm32v6 --os linux --arch arm
docker manifest push chriskinsman/rpi-tilloo:latest
