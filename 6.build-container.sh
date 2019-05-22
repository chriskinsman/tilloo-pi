#! /bin/bash
docker login
docker build -t chriskinsman/rpi-tilloo:1 .
docker push chriskinsman/rpi-tilloo:1
