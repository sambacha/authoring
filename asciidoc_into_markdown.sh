#!/bin/bash
# convert into docbook for intermediate format
for f in *.adoc; do asciidoctor -b docbook -d book "$f" -o "${f%.*}".xml; done

# convert using pandoc into markdown
for f in *.xml; do pandoc -f docbook -t gfm "$f" -o "${f%.*}".md; done
