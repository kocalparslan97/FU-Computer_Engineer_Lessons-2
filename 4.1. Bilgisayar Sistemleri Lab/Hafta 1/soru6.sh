#!/bin/bash
# Mert Incidelen
echo "dosya dizinini giriniz:"
read dizin
cd
cd $dizin

echo "dosya ismini giriniz:"
read dosya

if [ -f $dosya ]; then
	echo "dosya mevcut"
else 
	echo "dosya mevcut degil:"
	touch $dosya.txt
	echo merhaba dunya >> $dosya.txt
fi

