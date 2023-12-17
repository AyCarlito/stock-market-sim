#!/bin/bash

GIT_ROOT="$(git rev-parse --show-toplevel)"

docker run -it --entrypoint /bin/sh --rm --net=host -v ${GIT_ROOT}:/app stock-market-simulation-dev:0.0.1