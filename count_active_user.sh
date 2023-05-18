#!/bin/bash  
####
# -eq, -lt, gt - operatory pro porovnavani cisel - eq = rovna se, -lt mensi nez , gt - vetsi nez
####

function get_count_user(){
	# slovem local reknu promene, ze jeji viditelnost je pouze ve funkci get_count_user
	local count_user=$(w | awk '!/USER|load/' | wc -l)
	# vratim hodnotu ven z funkce
	echo $count_user 
	
}

function set_limit_user(){
	local limit_count_active_user=1
	echo $limit_count_active_user  
}

function check_user(){
        login_user=$(get_count_user)
	limit_user=$(set_limit_user)

	if [ "$login_user" -eq "$limit_user" ];then
	   echo "Login user active:$login_user"
	   echo "Limit login user:$limit_user"
	   echo -e "\e[31mThe number of logged-in users in the system is the same as the capacity..\e[0m"		
	elif [ "$login_user" -lt "$limit_user" ];then
	   echo "The number of logged-in users is less than the maximum capacity."
	elif [ "$login_user" -gt "$limit_user" ];then
	   echo -e "\e[31m====== ALERT ======\e[0m"
	   echo -e "\e[31mThe capacity of logged-in users has been exceeded!!!\e[0m"
	   #Odeslani upozorneni do syslogu 
	   logger count_active_user.sh "The capacity of logged-in users has been exceeded!!!"
	   check_message_in_syslog
	fi
}

function check_message_in_syslog(){
	grep -i "the capacity of logged-in users has been exceeded" /var/log/syslog
	if [ $? == 0 ];then
	   echo "The message in syslog has been search."
	else 
	   echo "The message in syslog was not found. Please review the syslog configuration or contact the system administrator for assistance."
	fi	
}
#get_count_user
#set_limit_user 
check_user
