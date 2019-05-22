#! /bin/bash
docker login
docker build -t chriskinsman/rpi-tilloo:latest-arm32v6 .
docker push chriskinsman/rpi-tilloo:latest-arm32v6

