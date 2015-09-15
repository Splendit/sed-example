#!/bin/sh

echo "Input:"
cat abkuerzungen.txt

# Add slashes at the start, in the middle and at the end:
echo "\nSchrägstriche hinzufügen, sowie vorne ein \"s\" und hinten ein \"g\":" 
sed -r 's_(^|=|$)_/_g;s/^/s/;  s#$#g#' abkuerzungen.txt

# This is equivalent: 
# sed 's_\(^\|=\|$\)_/_g; s/^/s/; s/$/g/' abkuerzungen.txt
