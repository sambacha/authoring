#!/bin/bash
# converts ASCIIDOC to RST 
# RST can then be used to go to Markdown 
# 
echo "convering asciidoc to rst format..."

asciidoctor -b docbook5 -o file.xml file.adoc
pandoc --base-header-level=1 --wrap=preserve -f docbook -o file.rst file.xml

sleep 1

sed -i '' 's@.xml@.rst@g' file.rst
sed -i '' 's@   \*\*Note\*\*@.. note:: @g' file.rst
sed -i '' 's@   include::@.. literalinclude:: @g' file.rst
sed -i '' 's@yaml\[\]@yaml@g' file.rst
sed -i '' 's@json\[\]@JSON@g' file.rst
sed -i '' '/.. __/d' file.rst

exit 0
