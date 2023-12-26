#!/bin/bash

docker build \
    --progress=plain \
    -t stock-market-simulation:0.0.1 \
    -f ../Dockerfile \
    ../