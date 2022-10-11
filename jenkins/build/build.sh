#!/bin/bash

echo "######################################"
echo "###### Building App ##################"
echo "######################################"

# Copy *.jar from java-app/targets/*jar. to openjdk container
cp ./java-app/target/*.jar ./jenkins/build/

#cd jenkins/build/ && 
docker-compose -f ./jenkins/build/docker-compose-build.yaml build --no-cache
