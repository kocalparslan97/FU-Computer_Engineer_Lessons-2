#!/bin/bash
# Mert Incidelen
echo "Hosgeldiniz $USER"
echo "Bir dizin giriniz:"
read data
tar -cvf yedek.tar $data
echo "Dosyalar bu dizine yedek.tar olarak kaydedildi."

#Tar dosyasi acma komutu:    tar -xvf dosyaismi.tar
