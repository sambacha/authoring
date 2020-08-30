#!/bin/sh
echo "==> DOCBOOK TO MARKDOWN.."
for f in *.xml; do pandoc -f docbook -t gfm "$f" -o "${f%.*}".md; done
