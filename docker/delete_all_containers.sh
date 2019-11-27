#!/bin/bash

./docker/kill_containers.sh

docker rmi bravotodo bravotodo-builder
docker system prune
