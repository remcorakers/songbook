#!/bin/bash

if [ "$1" == "" ]; then
    echo "Please provide a path where your tab files are located."
    exit 4
fi

# use a temp file, based on songbook.tex
cp ./songbook.tex ./output/songbook.temp.tex

# replace TABDIR placeholder with actual value of the directory with tab files
tabDir=${1%/} # remove last slash, if existing
sed -i "s|TABDIR|$tabDir|g" ./output/songbook.temp.tex

# run twice: first run for the table of contenst, second one for complete PDF
xelatex -enable-write18 -output-directory=./output "./output/songbook.temp.tex"
xelatex -enable-write18 -output-directory=./output "./output/songbook.temp.tex"

# rename generated songbook pdf
mv ./output/songbook.temp.pdf ./output/songbook.pdf

# clean up temp files
rm ./output/*temp*
