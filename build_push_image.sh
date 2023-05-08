#!/bin/bash

docker build . --tag item-app:v1
docker image ls
docker tag item-app:v1 ghcr.io/fahmisyaifudin/a433-microsevice-docker:v1

# need variable CR_PAT, it can be get from github personal access token
echo $CR_PAT | docker login ghcr.io -u fahmisyaifudin --password-stdin

docker push ghcr.io/fahmisyaifudin/a433-microsevice-docker:v1
