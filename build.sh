#!/bin/sh

DATADIR=.

files=$(find -L "$DATADIR" -type f -name "*.md")
echo "$files" | while read file; do
  result=${file%.*}.html
  
  if [ ! -f "$result" ]; then
    difference=1000
  else
    difference=$(($(date -r "$file" +%s)-$(date -r "$result" +%s)))
  fi
  
  if [ $difference -gt 0 ]; then # source file was modified after the output file or output doesn't exist
    echo "Rebuilding $file"
    name=$(basename "$file")
    pandoc "--output=$result" \
      --data-dir=$DATADIR --template=template.html \
      --mathjax --variable=pagetitle:${name%.*}\ \|\ Anthony\ Zhang $file
  fi
done
