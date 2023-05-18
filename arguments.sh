#!/bin/bash 
# Zadání:Skript, který přijme jako argumenty několik jmen souborů a zkopíruje je do zadaného adresáře. 
function file (){
	if [ -e /home/kamil/Zaloha ];then
		for soubor in "$@";do
	   		cp "$soubor" /home/kamil/Zaloha
		done
	else 
		mkdir /home/kamil/Zaloha
		file "$@"
	fi
}

file "$@"

