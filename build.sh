#!/usr/bin/env bash

# Base directory containing source code
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

# Optional TAG argument (if set, only the specified image will be built)
TAG=${1:-null}

PLATFORM=${2:-"linux/amd64,linux/arm64"}

# Check if the TAG variable is set
if [ "$TAG" != null ]

  # Only build one image
  then
    docker buildx build \
      	--load \
      	-t stephenneal/python-aws:"${TAG}" \
      	--platform "${PLATFORM}" \
      	"${DIR}"/"${TAG}"/

  # Build all images
  else
    docker build -t stephenneal/python-aws:3.9-alpine "${DIR}"/3.9-alpine/
    docker build -t stephenneal/python-aws:3.9-buster "${DIR}"/3.9-buster/
    docker build -t stephenneal/python-aws:3.10-alpine "${DIR}"/3.10-alpine/
    docker build -t stephenneal/python-aws:3.10-buster "${DIR}"/3.10-buster/
    docker build -t stephenneal/python-aws:3.11-alpine "${DIR}"/3.11-alpine/
    docker build -t stephenneal/python-aws:3.11-buster "${DIR}"/3.11-buster/
    docker build -t stephenneal/python-aws:3.12-alpine "${DIR}"/3.12-alpine/
    docker build -t stephenneal/python-aws:3.12-bullseye "${DIR}"/3.12-bullseye/
    docker build -t stephenneal/python-aws:3.12-slim "${DIR}"/3.12-slim/
    docker build -t stephenneal/python-aws:3.13-alpine "${DIR}"/3.13-alpine/
    docker build -t stephenneal/python-aws:3.13-bullseye "${DIR}"/3.13-bullseye/
    docker build -t stephenneal/python-aws:3.13-slim "${DIR}"/3.13-slim/
fi