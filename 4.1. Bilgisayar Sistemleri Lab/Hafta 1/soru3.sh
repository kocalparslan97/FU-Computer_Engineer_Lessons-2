#!/bin/bash
# Mert Incidelen
echo "Hosgeldiniz $USER"
echo "Bir dizin giriniz"
read data
if [ -d $data ]; then
	echo "Dizin mevcut"
else
	echo "Dizin mevcut değil"
fi

