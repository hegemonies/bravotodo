#!/bin/bash

docker_images="docker images"

if $docker_images | grep bravo-todo; then
  docker rmi bravo-todo
fi

if $docker_images | grep bravotodo-builder; then
  docker rmi bravotodo-builder
fi
  