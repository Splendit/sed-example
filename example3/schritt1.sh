#!/bin/sh

echo "Input:"
cat abkuerzungen.txt

# Add slashes at the start, in the middle and at the end:
echo "\nSchrägstriche vorne, in der Mitte und hinten hinzufügen:"
sed -r 's_(^|=|$)_/_g' abkuerzungen.txt

# Without extended regex and without replacing "/" with "_":
# sed 's/\(^\|=\|$\)/\//g' abkuerzungen.txt
