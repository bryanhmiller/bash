#!/bin/bash

# Params
BASE_FILE=$1
COMPARED_FILE=$2
BASE_FILE_TYPE=${BASE_FILE##*.} 
COMPARED_FILE_TYPE=${COMPARED_FILE##*.} 

# File Validation
if [[ -z "$BASE_FILE" ]]; then
    echo No files to compare
    exit 1
elif [[ -z "$COMPARED_FILE" ]]; then
    echo Comparison file missing
    exit 1
elif [[ ($BASE_FILE == $BASE_FILE_TYPE) || ($COMPARED_FILE == $COMPARED_FILE_TYPE) ]]; then
    echo Filenames must have extensions
    exit 1
fi

# Identify command operations and filehashing

magick identify -verbose $BASE_FILE > a.txt
cat a.txt | head -10 

md5=($(md5sum $BASE_FILE))
echo Filehash for $BASE_FILE is $md5

echo $BASE_FILE is BASE_FILE, $COMPARED_FILE is COMPARED_FILE

echo -e Length of BASE_FILE is ${#BASE_FILE}, length of COMPARED_FILE is ${#COMPARED_FILE} 

echo Last BASE_FILE section is ${BASE_FILE##*.} 
