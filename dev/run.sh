#!/bin/bash

GIT_ROOT="$(git rev-parse --show-toplevel)"

docker run -p 127.0.0.1:3000:3000 stock-market-simulation-dev:0.0.1

