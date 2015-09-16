#!/bin/sh

echo "Abkürzungen (Original):"
cat abkuerzungen.txt

### Simple redirect of standard output:

# Create the sed pattern file:
# echo "sed Muster-Datei erzeugen:"
# sed -r 's_(^|=|$)_/_g; s/^/s/; s/$/g/' abkuerzungen.txt > abkuerzungen.sed


### In-place editing:

echo "\nAbkürzungen als sed Muster:"
sed -i.bak -r 's_(^|=|$)_/_g; s/^/s/; s/$/g/' abkuerzungen.txt
cat abkuerzungen.txt


### Input text:
echo "\nEingabetext:"
cat eingabe.txt

### Output text:
echo "\nAusgabetext:"
sed -f abkuerzungen.txt eingabe.txt
# sed -f abkuerzungen.sed eingabe.txt 	# redirect version

### Restore backup of abkuerzungen.txt:
mv abkuerzungen.txt.bak abkuerzungen.txt
