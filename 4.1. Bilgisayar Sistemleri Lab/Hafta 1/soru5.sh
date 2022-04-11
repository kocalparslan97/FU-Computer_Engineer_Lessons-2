#!/bin/bash
# Mert Incidelen
echo "Lutfen sifre giriniz:"
read sifre
if [ $sifre = "unixstudent" ]; then
	echo "Sifre dogru"
else
	echo "sifre yanlis"
fi

