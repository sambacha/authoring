#!/bin/bash
# asciidoc to rst perserves more meta details 
# specify your format extentsion

FILES=*.adoc
for f in $FILES
do
  # extension="${f##*.}"
  # optional .extenstion reformat
  # filename="${f%.*}"
  echo "Converting $f to MarkDown..."
  `asciidoctor -b docbook $f`
  # uncomment this line to delete the source file.
  # rm $f
done

exit 0
