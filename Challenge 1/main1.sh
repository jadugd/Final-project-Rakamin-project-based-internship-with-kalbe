#!/bin/bash
path=/hdfs/data/data1
name_of_directory=data1

if [ -d "$path" ]; then
    echo "There is $name_of_directory Directory Exists!"
else
    echo "$name_of_directory Directory Not Exists!"
    mkdir -p $path
    echo "$name_of_directory Directory Created"
fi