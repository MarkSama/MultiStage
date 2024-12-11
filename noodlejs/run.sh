#!/bin/bash
docker build -t noodle:v1 -f Dockerfile_2 .
docker create -it -p 8089:8080 --name node --hostname node noodle:v1
docker start node