for f in *.tex; do pandoc -s -t gfm "$f" -o "${f%.*}".md; done
