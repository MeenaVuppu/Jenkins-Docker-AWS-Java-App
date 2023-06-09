#!/bin/bash

echo "Pushing image"

IMAGE="practice"

echo "Logging in"
docker login -u meenavuppu -p $PASSWORD

echo "Tagging image"
docker tag $IMAGE:$BUILD_TAG meenavuppu/$IMAGE:$BUILD_TAG

echo "Pushing image"
docker push meenavuppu/$IMAGE:$BUILD_TAG
