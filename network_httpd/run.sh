#!/bin/bash

docker build -t apacs:v1 -f ./Dockerfile_fedora .
docker build -t sql:v1   -f ./Dockerfile_sql .

docker create -it --network mynetwork --name apacs --hostname apacs apacs:v1
docker start apacs

docker create -it --network mynetwork -p 33006:3306 --name sql --hostname sql sql:v1
docker start sql