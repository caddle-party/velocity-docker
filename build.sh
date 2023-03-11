#!/bin/bash

version=$(cat Velocity/build.gradle.kts | grep 'version' | grep -Eo '([0-9]+)\.([0-9]+)\.([0-9]+)')
commitSha=$(cd Velocity && git rev-parse --short HEAD)
tag=$version-$commitSha

docker login ghcr.io -p $GHCR_TOKEN -u $GHCR_USER
docker build -t ghcr.io/caddle-party/velocity:$tag .
docker push ghcr.io/caddle-party/velocity:$tag
