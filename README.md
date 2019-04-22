# songbook

Create a PDF file from all your tabs, lyrics, or chord files that you have stored as txt files on your local machine. This PDF file can then easily be transferred to an e-reader, so you can take your tabs with you on the road! How awesome is that!?

This is a first rudimentary version, but sufficient for now. The PDF has an index with clickable links and each song starts on a new page.

## Prerequisites

- Docker
- Files in the tabs directory are stored as `.txt` files

## How to generate your PDF?

Run the following command from the directory containing this repo code, where you replace `/path/to/your/tabs/directory` with the actual value of the path on your system:

```Shell
$ docker run -w /src -v $(pwd):/src -v /path/to/your/tabs/directory:/tabs moss/xelatex bash /src/songbook.sh /tabs
```

This will create a file named `songbook.pdf` in the `./output` directory, containing all the `.txt` files from the provided directory with tabs.
