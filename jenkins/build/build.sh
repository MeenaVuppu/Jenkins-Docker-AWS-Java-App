#!/bin/bash

# copying new jar to build loc

cp -f java-app/target/*.jar jenkins/build/

# building docker image

cd jenkins/build/ && docker-compose -f docker-compose-build.yml build --no-cache
