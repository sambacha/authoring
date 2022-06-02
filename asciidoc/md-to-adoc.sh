#!/usr/bin/env bash
set -e
echo "Ruby check"
eval "$(rbenv init -)"
rbenv shell 2.7.0
sleep 1
echo "Starting conversion, you must have kramdoc installed"
kramdoc --version
echo "converting all md-gfm files into asciidoc format..."
#find ./ -name "*.md" -type f -exec sh -c \ 'kramdoc --format=GFM --wrap=ventilate --output={}.adoc {}' \;
find ./ -name "*.md" -type f -exec sh -c \ 'kramdoc --lazy-ids --auto-id-prefix=_ --auto-id-separator=_ --format=GFM --wrap=ventilate --output={}.adoc {}' \;
exit 0
