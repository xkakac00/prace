#!/bin/bash
function is_root(){
	user=$(whoami)
	if [ "$user" == "root" ];then
		echo ""
	else
	        echo "This script must be run by the root superuser."
		exit 1
	fi
}


function get_name(){
	read -p "Enter your username:" username
	read -p "Enter your whole name:" wholename
        
	### Převod uživatelskeho jmena na mala pismena
	username_lower=$(echo "$username" | tr '[:upper:]' '[:lower:]')
	
	## Kontrola, jestli uživatel již existuje
	check=$(cat /etc/passwd | grep "$username_lower" | wc -l)
	if [ "$check" == 1 ];then
	   echo "This user already is existed, please entry another username."
	   exit 1
	else
	   echo ""
	fi	
}

function add_user(){
	# -m - vytvori se domovsky adresar /home/$username_lower
	# -s - nastavuje výchozí shell na /bin/bash
	# -c - přidán celého jména 
	useradd -m -s /bin/bash -c "$wholename" "$username_lower"
	if [ $? == 0 ];then
	   echo "This user has been add in the system"
	else
	   echo "Error, please contact administrator"
	fi
	
	# Nastavení hesla
	echo "Now you can setup password for user $username_lower"
	sleep 3s
	passwd "$username_lower"
	
}

is_root
get_name
add_user
