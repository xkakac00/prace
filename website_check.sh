#!/bin/bash 
website="https://www.seznam.cz/"

while true;do
        # dostupnost musi byt dana do smycky while, aby byla aktualizovana
	check_available=$(curl -s  --head --fail "$website" > /dev/null | echo $?)
	if [ "$check_available" -eq 0 ];then
	   echo -e "\e[32m$website is available...\e[0m"
	else
	   echo -e "\e[31m$website is not available...\e[0m"
	fi
	# dostupnost se provede kazdych 5 minut.
	sleep 300s	
done
