#!/bin/bash

echo $BUILD_TAG > /tmp/.auth
echo $DOCKER_PW >> /tmp/.auth

scp -i ~/.ssh/id_rsa ubuntu@13.230.95.37:/tmp/.auth
ssh -i ~/.ssh/id_rsa ubuntu@13.230.95.37 "/home/ubuntu/maven-app/deploy.sh"
