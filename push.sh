#!/usr/bin/env bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

# Optional TAG argument (if set, only the specified image will be built)
TAG=${1:-null}

# Check if the TAG variable is set
if [ "$TAG" != null ]

  # Only build & push one image
  then
    sh "${DIR}"/build.sh "${TAG}"
    docker push stephenneal/python-aws:"${TAG}"

  # Build & push all images
  else
    sh "${DIR}"/build.sh

    docker push stephenneal/python-aws:3.9-alpine
    docker push stephenneal/python-aws:3.9-buster
    docker push stephenneal/python-aws:3.10-alpine
    docker push stephenneal/python-aws:3.10-buster
    docker push stephenneal/python-aws:3.11-alpine
    docker push stephenneal/python-aws:3.11-buster
    docker push stephenneal/python-aws:3.12-alpine
    docker push stephenneal/python-aws:3.12-bullseye
    docker push stephenneal/python-aws:3.12-slim
    docker push stephenneal/python-aws:3.13-alpine
    docker push stephenneal/python-aws:3.13-bullseye
    docker push stephenneal/python-aws:3.13-slim
fi