#!/bin/bash

DOCKER_CONFIGS="$(pwd)/datas/portainer"

docker run -d \
    --name portainer \
    -p 9000:9000 \
    -v "/var/run/docker.sock:/var/run/docker.sock" \
    -v "${DOCKER_CONFIGS}/data/:/data/" \
    --restart=unless-stopped \
    portainer/portainer:latest
