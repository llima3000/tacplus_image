#!/bin/sh
#docker build --no-cache -t llima3000/tacplus . 

docker buildx create --name tacplus
docker buildx use tacplus

docker buildx build --platform linux/amd64,linux/arm64/v8 -t llima3000/tacplus:latest --push .

docker buildx rm tacplus
