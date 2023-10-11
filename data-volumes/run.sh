#! /usr/bin/env bash

if [[ "$#" -ne 1 ]]; then
    echo "\n"
    echo "Usage: run.sh <image_name>"
    echo "\n"
    echo "Available images:"
    docker images
    exit
fi

image_name=$1

folder_dir="$(dirname -- "$(realpath -- "$0")")"
folder_name=${folder_dir##*/}

docker run \
  -p 3000:80 -d --rm \
  --name ${folder_name} \
  -v feedback:/app/feedback  \
  -v "$folder_dir:/app"  \
  -v /app/node_modules ${image_name}

