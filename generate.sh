#!/bin/bash

if [ "$1" == "" ]; then
    echo "Please provide an path where your tab files are located."
    exit 4
fi

files="$1/*.txt"

for f in $files
do
  filename=$(basename "$f")
  extension="${filename##*.}"
  filename="${filename%.*}"

  echo "\clearpage"
  echo "\section*{$filename}"
  echo "\markboth{$filename}{$filename}"
  echo "\addcontentsline{toc}{section}{$filename}"
  echo "\VerbatimInput{\"$f\"}"
done
