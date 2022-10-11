#!/bin/bash

echo "################################"
echo "### Push image to Docker Hub ###"
echo "################################"

docker login -u hsinyih -p $DOCKER_PW

docker push hsinyih/java-app:v$BUILD_TAG
