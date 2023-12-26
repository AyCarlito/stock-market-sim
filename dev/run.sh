#!/bin/bash

GIT_ROOT="$(git rev-parse --show-toplevel)"

echo "Run 'npm install' ..."
echo "Run 'npm start' ..."

docker run -p 127.0.0.1:3000:3000 \
    -it \
    --entrypoint /bin/sh \
    --rm \
    --user "$(id -u):$(id -g)" \
    -v "${GIT_ROOT}":/development/app \
    -w /development/app \
    stock-market-simulation:0.0.1

