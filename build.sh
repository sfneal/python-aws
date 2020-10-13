#!/usr/bin/env bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

docker build -t stephenneal/python-aws:3.7-alpine-v1 "${DIR}"/3.7-alpine-v1/
docker build -t stephenneal/python-aws:3.8-alpine-v1 "${DIR}"/3.8-alpine-v1/
docker build -t stephenneal/python-aws:3.8-alpine-v2 "${DIR}"/3.8-alpine-v2/
docker build -t stephenneal/python-aws:3.9-alpine "${DIR}"/3.9-alpine/
docker build -t stephenneal/python-aws:3.9-buster "${DIR}"/3.9-buster/
docker build -t stephenneal/python-aws:3.10-rc-alpine "${DIR}"/3.10-rc-alpine/
docker build -t stephenneal/python-aws:3.10-rc-buster "${DIR}"/3.10-rc-buster/