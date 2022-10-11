#!/bin/bash

#export BUILD_TAG=$(sed -n "1p" /tmp/.auth)
#export DOCKER_ID=$(sed -n "2p" /tmp/.auth)
#export DOCKER_PW=$(sed -n "3p" /tmp/.auth)

docker login -u hsinyih -p$DOCKER_PW
ssh -i ~/.ssh/id_rsa ubuntu@13.230.95.37 "cd /home/ubuntu/maven-app && docker-compose up -d"
