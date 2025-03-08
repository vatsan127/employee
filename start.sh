#!/bin/bash

echo "Clearing previous docker compose ....."
docker compose down

mvn clean install -DskipTests
mkdir -p target/dependency
cd target/dependency && jar -xf ../*.jar && cd -

#Docker Tagging Old Image
#TIMESTAMP=$(date +"%Y%m%d%H%M%S")
#echo "Tagging Old Binary with: $TIMESTAMP"
#docker tag employee:latest employee:$TIMESTAMP

docker build -t employee:latest .

echo "Starting docker compose ....."
docker compose up