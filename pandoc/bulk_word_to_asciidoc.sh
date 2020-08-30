#!/bin/sh
echo "==> DOCX TO ASCIIDOC..."
find ./ -iname "*.docx" -type f -exec sh -c 'pandoc "${0}" -t asciidoc -o "./output/${0%.docx}.adoc"' {} \;
