#!/bin/bash

docker_ps="docker ps"
name_web_container="web"
network_name="skynet"

if $docker_ps | grep ${name_web_container}; then
  echo "docker kill web"
  docker kill ${name_web_container}
fi

# Build docker image with our web app
echo "Build docker image with bravotodo app"
docker build -t bravo-todo -f docker/Dockerfile .

echo "docker run web"
docker run --rm -d -p 3000:3000 --network ${network_name} --name ${name_web_container} bravo-todo
