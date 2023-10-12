#! /usr/bin/env bash

source $(dirname "$0")/utils.sh

docker stop mongodb
docker stop ${project_name}_backend
docker stop ${project_name}_frontend
docker rm ${project_name}_frontend
docker network rm ${project_name}_network
