#!/bin/bash

# Change path to your the directory where you store your tabs.
for f in /users/remco/dropbox/tabs/*.txt
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