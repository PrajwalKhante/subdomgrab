#!/bin/bash

figlet -t subdomgrab
echo -e "                           v1.0"

echo "====================================================================="
echo "What's in this Script"
echo "====================================================================="
echo "Grab all Subdomains in to a File"
echo "Make sure Amass,Assetfinder,Subfinder,Findomain are Installed"

if [ -z "$1" ]
then
        echo -e "Usage: ./subdomgrab.sh <target>"
        exit 1
fi

echo "====================================================================="

echo -e "Checking Internet Connectivity:\c"

ping -q -c5 google.com > /dev/null
 
if [ $? -eq 0 ]
then
	echo -e "Works fine"
else 
	echo "Check Internet"
	exit
fi

amass enum -d $1 -o amass.txt
assetfinder $1 >> assetfinder.txt
subfinder -d $1 -o subfinder.txt
findomain -t $1 -q -u findomain.txt
cat amass.txt assetfinder.txt subfinder.txt findomain.txt >> total.txt
rm amass.txt assetfinder.txt subfinder.txt findomain.txt
echo "File Created with name total.txt"
