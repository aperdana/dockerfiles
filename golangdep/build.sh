#!/usr/bin/env bash

if [ $# -lt 1 ]; then
    echo "ERROR: Dockerfile not specified"
    exit 1
fi

dep_version="v0.4.1"
if [ ! -z "$2" ]; then
    dep_version=$2
fi

echo "Building docker image using dockerfile $1 for dep $dep_version"

docker build -t "golangdep" -f $1 --build-arg $dep_version ./
