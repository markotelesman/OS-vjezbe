#!/bin/bash

broj=$1

if [ $broj -lt 1 ] || [ $broj -gt 10 ]; then
	echo "Broj nije unutar zadanog raspona 1-10"
	exit 1
fi

niz_brojevi=""

for (( i= 1; i<=$broj; i++ )); do
	niz_brojevi+="$i "
done

echo "$niz_brojevi" > brojevi.txt
