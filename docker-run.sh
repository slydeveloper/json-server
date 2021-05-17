#!/bin/bash

source .env
docker stop $DOCKER_CONTAINER
docker rm $DOCKER_CONTAINER
docker run -d -p 8000:8000 --name $DOCKER_CONTAINER $DOCKER_IMAGE_NAME
docker logs -f $DOCKER_CONTAINER
docker ps | grep $DOCKER_CONTAINER