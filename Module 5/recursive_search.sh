#!/bin/bash

# Recursive search function
search_keyword() {
  local directory=$1
  local keyword=$2

  for file in "$directory"/*; do
    if [ -d "$file" ]; then
      search_keyword "$file" "$keyword"   # Recursive call
    elif [ -f "$file" ]; then
      grep -q "$keyword" "$file" && echo "Found '$keyword' in $file"
    fi
  done
}

# Input arguments
directory=$1
keyword=$2

if [ -z "$directory" ] || [ -z "$keyword" ]; then
  echo "Usage: $0 <directory> <keyword>"
  exit 1
fi

search_keyword "$directory" "$keyword"


