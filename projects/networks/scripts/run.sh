#! /usr/bin/env bash

source ./scripts/utils.sh

if [[ "$#" -ne 1 ]]; then
    echo "\n"
    echo "Usage: run.sh <image_name>"
    echo "\n"
    echo "Available images:"
    docker images
    exit
fi

image_name=$1

docker network create ${folder_name}_network

docker run \
  -d \
  --rm \
  --name mongodb \
  --network ${folder_name}_network \
  mongo

docker run \
  -d \
  --rm \
  -p 3000:3000 \
  --name ${folder_name}_app \
  -v /app/node_modules \
  --network ${folder_name}_network \
  ${image_name}

