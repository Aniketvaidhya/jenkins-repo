#!/bin/bash

echo $BUILD_TAG > /tmp/.auth
echo $DOCKER_PW >> /tmp/.auth

scp -i ~/.ssh/id_rsa ubuntu@13.230.95.37:/tmp/.auth
docker login -u hsinyih -p$DOCKER_PW
ssh -i ~/.ssh/id_rsa ubuntu@13.230.95.37 "cd /home/ubuntu/maven-app && docker-compose up -d"
