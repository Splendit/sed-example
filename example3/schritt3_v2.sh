#!/bin/sh

### Input text:
echo "Eingabetext:"
cat eingabe.txt

### Output text:
echo "\nAusgabetext:"
sed -e "$(sed 's_\(^\|=\|$\)_/_g; s/^/s/; s/$/g/' abkuerzungen.txt)" eingabe.txt
