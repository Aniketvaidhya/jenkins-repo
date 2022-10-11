#!/bin/bash

echo "***************************"
echo "** Building jar ***********"
echo "***************************"

WORKSPACE="/home/ubuntu/pipeline/jenkins/jenkins_home/workspace/maven-app"

docker run --rm -v $WORKSPACE/java-app:/app -v /root/.m2:/root/.m2 -w /app maven:3.5.4 "$@"

