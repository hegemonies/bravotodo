#!/bin/bash

# Create network
network_name="skynet"
docker_network="docker network ls"
if ! $docker_network | grep skynet; then
  docker network create ${network_name}
fi

# Run database
name_db_container="db"
name_web_container="web"
database_name="todo_list"
root_password="password"
tag="latest"
port=5432

echo "docker run ${name_db_container} version:${tag} port:${port}"
docker run --rm --name ${name_db_container} --network ${network_name} -p ${port}:5432 -e POSTGRES_PASSWORD=${root_password} -e POSTGRES_DB=${database_name} -d postgres:${tag}

# Build docker image builder
docker_images="docker images"
if ! $docker_images | grep bravotodo-builder; then
  echo "Build docker image with bravotodo builder"
  docker build -t bravotodo-builder -f docker/Dockerfile-builder .
fi

# Build docker image with our web app
echo "Build docker image with bravotodo app"
docker build -t bravo-todo -f docker/Dockerfile .

# Run out web app
echo "docker run ${name_web_container} port:3000"
if $docker_images | grep bravotodo; then
  docker run --rm -d -p 3000:3000 --network ${network_name} --name ${name_web_container} -v $(pwd):/mnt bravo-todo
fi
#docker run --rm -p 3000:3000 --network skynet --name web bravo-todo bash