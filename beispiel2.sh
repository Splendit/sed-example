#!/bin/sh

input="aaa aaa aaa\nab ab ab ab\nabc abc abc"

echo "Input:\n$input"

# Substitute all occurrences of “a” with “b” (globally):
echo "\nSubstitution aller Vorkommnisse von “a” durch “b” (global):"
echo $input | sed s/a/b/g

# Substitute the 3rd occurrence of “a” with “b”:
echo "\nSubstitution des 3. Vorkommnisses:"
echo $input | sed s/a/b/3

# Substitute all occurrences of “a” with “b” after the 3rd occurrence:
echo "\nSubstitution aller Vorkommnisse nach dem 3. Vorkommnis:"
echo $input | sed s/a/b/3g
