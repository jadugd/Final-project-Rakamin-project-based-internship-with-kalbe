#!/bin/bash
path=/hdfs/data/data1
name_of_directory=data1
filename_excel=daily_market_price.xlsx
source_dir=/local/data/market
target_dir=$path

if [ -d "$path" ]; then
    echo "There is $name_of_directory Directory Exists!"
    cp $source_dir/$filename_excel $target_dir
    echo `date` "File copied successfully" >> $path/log.txt 
else
    echo "$name_of_directory Directory Not Exists!"
    mkdir -p $path
    echo "$name_of_directory Directory Created"
fi