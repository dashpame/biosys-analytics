#!/usr/bin/env bash

set -u

if [[ $# -eq 0 ]]; then
    echo "Usage: foo.sh ARG"
    exit 1
fi

FILE=$1

if [[ ! -f "$FILE" ]]; then
    echo "$FILE is NOT a file"
    exit 1
fi


