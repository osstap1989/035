#!/bin/bash
date=`date "+%Y_%m_%d"` ;  


source_dir=$1
backup_dir=$2
mkdir -p $2/$date 
find $1/* -mtime -1 -exec cp -r {} $2/$date \;
exit 0

