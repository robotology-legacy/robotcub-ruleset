#!/bin/bash

find . -type f -not -wholename "./.git/*" -exec dos2unix -q {} +

if [ -d eth/embobj-old ]; then
    mkdir -p tmp
    cp -alf eth/embobj-old/* tmp
    if [ -d eth/embobj ]; then
        cp -alf eth/embobj/* tmp
    fi
    rm -Rf eth/embobj eth/embobj-old
    mv tmp eth/embobj
fi
