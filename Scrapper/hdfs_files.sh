#!/bin/bash

# Define the base directory
base_dir="files"

# Define the HDFS destination directory
hdfs_dest_dir="/user/QQP"

hdfs dfs -mkdir hdfs_dest_dir

# Find and copy all .csv files to HDFS
find "$base_dir" -type f -name "*.csv" | while read -r csv_file; do
  echo "Copying $csv_file to HDFS at $hdfs_dest_dir"
  hdfs dfs -copyFromLocal "$csv_file" "$hdfs_dest_dir"
done
