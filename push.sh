#!/usr/bin/env bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

sh "${DIR}"/build.sh

docker push stephenneal/python-aws:3.7-alpine-v1
docker push stephenneal/python-aws:3.8-alpine-v1
docker push stephenneal/python-aws:3.8-alpine-v2
docker push stephenneal/python-aws:3.9-rc-alpine