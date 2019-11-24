#!/bin/bash

# Create network
network_name="skynet"
docker network create skynet

# Run database
name_db_container="db"
name_web_container="web"
database_name="todo_list"
root_password="password"
tag="latest"
port=5432

echo "docker run ${name_db_container} version:${tag} port:${port}"
docker run --rm --name ${name_db_container} --network ${network_name} -p ${port}:5432 -e POSTGRES_PASSWORD=${root_password} -e POSTGRES_DB=${database_name} -d postgres:${tag}

# Build docker image with our web app
docker build -t bravo-todo -f docker/Dockerfile .

# Run out web app
docker run --rm -d -p 3000:3000 --network ${network_name} --name ${name_web_container} bravo-todo
