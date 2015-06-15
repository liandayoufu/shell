#!/bin/bash

url=$1
dir=$2

download() {
	if [ -d $dir ]; then
		cd $dir
		wget -c $url &> /dev/null
	else
		read -p "$dir does not exist, create(y/n)? -> " answer
		case $answer in
			y)
			mkdir $dir && cd $dir
			wget -c $url &> /dev/null && return "51";;
			n)
			return "52" ;;
		esac
	fi
}

download $1 $2
			
echo $?
