#!/bin/bash
#function get_size_folder(){
#	local path=/home/kamil/Plocha/Zorin
#	local size=$(du -s "$path" | awk '{print $1}') # ziskam velikost adresare v kb
#	echo "$size"
#	echo "$path"
#}

#function check_size_folder(){
#	while true;do
#		limit=1048576 # 1GB = 1048576 kb 
#		size_folder=$(get_size_folder)
		
#		if [ "$size_folder" -eq "$limit" ];then
#			echo "The directory limit has been reached."
#		elif [ "$size_folder" -gt "$limit" ];then
#			echo "The directory limit has been exceeded."
#			echo "The directory -> $(get_size_folder)"
#			echo "His size:$(size_folder)"
#		elif [ "$size_folder" -lt "$limit" ];then
#			echo "The directory limit not reached"
#		fi
		#smycka se vykona kazdou minutu
#		sleep 60
#	done 
#}

#check_size_folder


function get_size_folder(){
	local path=$1
	local size=$(du -s "$path" | awk '{print $1}') # ziskam velikost adresare v kb
	# Vratim z funkce ven
	echo "$size"
}

function check_size_folder(){
	while true;do
	     limit=1048576 # 1GB = 1048576 kb
	     size_folder=$(get_size_folder "$1") # zavolam funkci, kam predam parametr /home/kamil/Plocha/Zorin a ta mi vrati velikost toho souboru.
	       if [ "$size_folder" -eq "$limit" ];then
                       echo "The directory limit has been reached."
               elif [ "$size_folder" -gt "$limit" ];then
                       echo "The directory limit has been exceeded."
                       echo "The directory -> $1"
                       echo "His size:$size_folder"
               elif [ "$size_folder" -lt "$limit" ];then
                       echo "The directory limit not reached"
               fi
                #smycka se vykona kazdou minutu
               sleep 60

	done

}

check_size_folder "/home/kamil/Plocha/Zorin"
