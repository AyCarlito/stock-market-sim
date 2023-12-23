#!/bin/bash

GIT_ROOT="$(git rev-parse --show-toplevel)"



docker run -it --entrypoint /bin/sh --rm --user 1000:1000 -p 127.0.0.1:3000:3000 -v ${GIT_ROOT}:/app stock-market-simulation-dev:0.0.1

