#!/usr/bin/env bash

cd..() {
    local levels=$1

    if [[ ! $levels =~ ^[0-9]+$ ]]; then
        echo "Please supply a valid number: \`cd.. 2\`"
        return 1
    fi

    for ((i=0; i<levels; i++)); do
        cd ..
    done
}
