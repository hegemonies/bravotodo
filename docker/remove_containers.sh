#!/bin/bash

docker_images="docker images"

if $docker_images | grep bravo-todo; then
  docker rmi bravo-todo --force
fi

if $docker_images | grep bravotodo-builder; then
  docker rmi bravotodo-builder  --force
fi

docker system prune
