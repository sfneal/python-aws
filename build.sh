#!/usr/bin/env bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

docker build -t stephenneal/python-aws:3.7-alpine-v1 "${DIR}"/3.7-alpine-v1/
docker build -t stephenneal/python-aws:3.8-alpine-v1 "${DIR}"/3.8-alpine-v1/