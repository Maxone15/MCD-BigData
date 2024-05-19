#!/bin/bash

sudo apt install rar unrar

# Define the base directory
base_dir="files"

# List all directories in the base directory
for dir in "$base_dir"/*; do
  if [ -d "$dir" ]; then
    # Extract the directory name
    dir_name=$(basename "$dir")
    
    # Define the .rar file path
    rar_file="$dir/$dir_name.rar"
    
    # Define the output csv directory
    csv_dir="$dir/csv"
    
    # Create the csv directory if it doesn't exist
    mkdir -p "$csv_dir"
    
    # Extract the .rar file into the csv directory
    unrar e "$rar_file" "$csv_dir"
  fi
done
