#!/bin/bash
# convert into docbook for intermediate format
for f in *.adoc; do asciidoctor -b docbook -d book "$f" -o "${f%.*}".xml; done

# convert using pandoc into markdown
for f in *.xml; do pandoc -f docbook -t gfm "$f" -o "${f%.*}".md; done

#### DOCBOOK INTO ASCIIDOC ###
for f in *.xml; do pandoc --wrap=none -f docbook -t asciidoc "$f" > "${f%.*}".adoc; done
###############################


for f in *.adoc; do asciidoctor -b docbook -d book "$f" -o "${f%.*}".adoc; done

# convert using pandoc into markdown
for f in *.xml; do pandoc -f docbook -t gfm "$f" -o "${f%.*}".md; done

# github flavoured markdown into docbook
for f in *.md; do pandoc -f gfm -t docbook "$f" -o "${f%.*}".xml; done

#
# pandoc --wrap=none -f docbook -t asciidoc \
#      DocbookFile.xml > AsciiDocFile.adoc
       

# Jupyter Notebook
FILE=yourFileName.md
pandoc ${FILE}.md -o ${FILE}.ipynb
