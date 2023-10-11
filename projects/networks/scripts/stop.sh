#! /usr/bin/env bash

source ./scripts/utils.sh

docker stop mongodb
docker stop ${folder_name}_app
docker network rm ${folder_name}_network
