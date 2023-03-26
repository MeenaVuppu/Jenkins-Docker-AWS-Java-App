#!/bin/bash

echo "Testing code"

WORKSPACE=/home/meena/jenkins_data/jenkins_home/workspace/jenkins-pipeline

docker run --rm -u root -v $WORKSPACE/java-app:/app -v /root/.m2:/root/.m2 -w /app maven "$@"
