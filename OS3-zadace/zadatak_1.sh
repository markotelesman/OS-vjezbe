#!/bin/bash

direktorij=$1
datotecni_nastavak=$2
broj_argumenata=$#

if [ $broj_argumenata -ne 2 ]; then
	echo "Potrebno je proslijediti tocno 2 argumenta"
	exit 1
fi


for datoteka in "$direktorij"/*"$datotecni_nastavak"; do
	if [ -f "$datoteka" ]; then
		echo $(basename "$datoteka")
	else
		echo "Nema takvih datoteka"
	fi
done
