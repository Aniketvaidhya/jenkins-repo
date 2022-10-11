#!/bin/bash

export BUILD_TAG=$(sed -n "1p" /tmp/.auth)
export DOCKER_ID=$(sed -n "2p" /tmp/.auth)
export DOCKER_PW=$(sed -n "3p" /tmp/.auth)
docker login -u $DOCKER_ID -p$DOCKER_PW
cd /home/ubuntu/maven-app && docker-compose up -d
