#! /usr/bin/env bash


rm -r $(pwd)/files
mkdir files

SIZE=100000000



for ((i=0;i<5;i++));
do
    dd if=/dev/zero of=./files/file_name${i}.tgz bs=$SIZE count=1
    file[$i]=file_name${i}.tgz
    echo ${file[$i]}
    printf "%s\n" "${file[@]}" > file.txt
done
