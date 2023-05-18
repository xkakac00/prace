#!/bin/bash
soubory=$(find /home/kamil/Plocha/pohovor/bash -type f)
for soubor in $soubory;do
	nazev=$(basename "$soubor")
	pocet_radku=$(cat $nazev | wc -l)
	echo "$nazev: $pocet_radku řádků"
done
