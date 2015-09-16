#!/bin/sh

input="Hallo Splendit! Hallo Splendit!"

echo "Input:\n$input"
echo "Output:"

# "Hallo Splendit! Hallo Splendit!" gets processed by sed: "Splendit" gets replaced by "Welt". 
echo $input | sed s/Splendit/Welt/
