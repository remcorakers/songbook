#!/bin/bash

if [ "$1" == "" ]; then
    echo "Please provide an path where your tab files are located."
    exit 4
fi

tabDir=${1%/} # remove last slash, if existing

escapedDir="${tabDir//\//\/}"
expression="%s/TABDIR/$escapedDir/g"

# use a temp file, based on songbook.tex
cp ./songbook.tex ./songbook.temp.tex

# replace TABDIR placeholder with actual value of the directory with tab files
ex -sc $expression -cx ./songbook.temp.tex

# run twice: first run for the table of contenst, second one for complete PDF
xelatex -enable-write18 "./songbook.temp.tex"
xelatex -enable-write18 "./songbook.temp.tex"

# rename generated songbook pdf
mv ./songbook.temp.pdf songbook.pdf

# clean up temp files
rm ./*temp*
