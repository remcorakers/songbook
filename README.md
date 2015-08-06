# songbook

Create a PDF file from all your tabs, lyrics, or chord files that you have stored as txt files on your local machine. This PDF file can then easily be transferred to an e-reader, so you can take your tabs with you on the road! How awesome is that!?

This is a first rudimentary version, but sufficient for now. The PDF has an index with clickable links and each song starts on a new page.

## How to generate your PDF?
- Configure the path to your txt files in generate.sh
- Run songbook.tex from terminal with write18 enabled, to be able to execute shell scripts: $ xelatex -enable-write18 songbook.tex
