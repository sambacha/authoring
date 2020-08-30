#!/bin/sh
echo "==> BULK ASCIIDOC to DOCBOOK..."
for f in *.adoc; do asciidoctor -b docbook -d book "$f" -o "${f%.*}".xml; done
