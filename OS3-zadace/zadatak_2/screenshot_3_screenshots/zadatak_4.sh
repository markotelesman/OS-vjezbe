#!/bin/bash

naziv_diretkorija="$1"

if [ ! -d "./$naziv_direktorija" ]; then
	echo "Direktorij '$naziv_direktorija' ne postoj"
	exit 1

else
	cd "./$naziv_direktorija"
	naziv_zippa="svi_zapisi.zip"
	zip -r "$naziv_zippa" *
fi






 
