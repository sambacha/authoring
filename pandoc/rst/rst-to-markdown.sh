for rst in *.rst; do pandoc "$rst" -f rst -t markdown -o "${rst%.*}.md"; done

# Recursively (if your shell supports double-star globs)
for rst in **/*.rst; do pandoc "$rst" -f rst -t markdown -o "${rst%.*}.md"; done
