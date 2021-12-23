#!/usr/bin/env bash

export CARGO_TARGET_DIR=/tmp/build/
export CARGO_ALLOC_CORES=""

until cd /src/primitives && cd /src
do
    echo "Waiting for volumes to mount..."
    sleep 1
done

cargo build -j"$(expr "$(getconf _NPROCESSORS_ONLN)" / 2)"
