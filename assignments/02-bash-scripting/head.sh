#!/usr/bin/env bash

set -u

if [[ $# -eq 0 ]]; then
    echo "Usage: head.sh ARG"
    exit 1
fi

FILE=$1
NUM_LINES=${2:-3}

if [[ ! -f "$FILE" ]]; then
    echo "$FILE is not a file"
    exit 1
fi

i=0
while read -r LINE; do
	echo "$LINE"
	i=$((i+1))
	if [[ $i -eq $NUM_LINES ]]; then
		break
	fi
done < "$FILE"
