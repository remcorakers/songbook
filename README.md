# songbook

Create a PDF file from all your tabs, lyrics, or chord files that you have stored as txt files on your local machine. This PDF file can then easily be transferred to an e-reader, so you can take your tabs with you on the road! How awesome is that!?

This is a first rudimentary version, but sufficient for now. The PDF has an index with clickable links and each song starts on a new page.

## Prerequisites

- `xelatex` should be installed (see [XeTeX's Wikipedia page](https://en.wikipedia.org/wiki/XeTeX) for more info)
- Script needs read/write permission in the current folder
- Files in the target directory are stored as `.txt` files
- Tested and developed on OSX, but should be possible to make it work on other platforms without much effort.

## How to generate your PDF?

Run the following command from the directory containing this repo code:

```Shell
$ bash ./songbook.sh /path/to/tab/directory
```

This will create a file named `songbook.pdf` containing all the `.txt` files from the provided directory.
