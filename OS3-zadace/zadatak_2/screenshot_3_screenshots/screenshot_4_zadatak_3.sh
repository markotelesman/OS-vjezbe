#!/bin/bash

rd=$(pwd)
broj_zapisa=1
prefix="screenshot_"

for dat in "$rd"/*; do
	nd=$(basename "$dat")
	novo_ime="${prefix}${broj_zapisa}_${nd}"
	mv "$nd" "$novo_ime"
	echo "$novo_ime"
	
	((broj_zapisa++))
done
