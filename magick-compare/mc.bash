#!/bin/bash

# Params
BASE_FILE=$1
COMPARED_FILE=$2

if [[ -z "$BASE_FILE" ]]; then
    echo No files to compare
    exit 1
elif [[ -z "$COMPARED_FILE" ]]; then
    echo Comparison file missing
    exit 1
fi


echo $BASE_FILE is BASE_FILE, $COMPARED_FILE is COMPARED_FILE