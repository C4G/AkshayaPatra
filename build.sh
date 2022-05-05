#!/bin/bash

echo "Building container image using jib"
./mvnw package -Pprod -DskipTests -Dmaven.test.skip=true verify jib:dockerBuild
docker image tag akshayapatravms ardahal/akshayapatravms:latest
docker push ardahal/akshayapatravms:latest