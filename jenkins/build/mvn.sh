#!/bin/bash/

echo "Building jar"

docker run --rm -u root -v $PWD/java-app:/app -v /root/.m2:/root/.m2 -w /app maven "$@"
