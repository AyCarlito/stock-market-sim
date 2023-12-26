#!/bin/bash

cid=$(docker ps | grep "stock-market-simulation-dev" | awk '{print $1}')

if [ -n "$cid" ]; then
    echo "Killing $cid ..."
    docker kill "$cid"
fi

