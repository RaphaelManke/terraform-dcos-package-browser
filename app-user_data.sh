#!/usr/bin/env bash
function init {
    apt-get update
    apt-get install -y docker.io
    sudo systemctl start docker
    sleep 5
    docker run --name dcos -p 80:8080 -d ftrossbach/dcos-config-reader
}

init