#!/bin/bash
# n e kadar tek sayi toplama 2019 quiz sorusu - Mert İncidelen
echo "sayi giriniz:"
read n
t=0
i=0
while (( $i <= $n ))
	do
		if (( $i % 2 == 0 )) 
			then
			i=$((i+1))
		else
			t=$((t+i))
			i=$((i+1))
		fi
	done

echo "sonuc: $t"
