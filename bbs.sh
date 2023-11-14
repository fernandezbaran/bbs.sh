#!/bin/bash

function connect() {
	echo $URL
	read -p "Would you like to connect via 1) TELNET 2) SSH " TS
	if [ "$TS" == "1" ]
	then
	ztelnet $(echo $URL | awk  '{print $1}' | sed 's/\:/\ /g')
	else
	read -p "Type your username: " username
	zssh $(echo $URL | awk  '{print $2}' | sed 's/\:/\ \-p/g') -l $username
	fi
}

if [ "$2" == "" ]
then
curl -s 'https://www.telnetbbsguide.com/?s='$1'' |  grep -oP '(?<=href\=\").*?(?=\")' | grep "com/bbs/" | uniq 
else
URL=$(curl -s $(curl -s 'https://www.telnetbbsguide.com/?s='$1'' |  grep -oP '(?<=href\=\").*?(?=\")' | grep "com/bbs/" | uniq | grep $2) | grep -oP '(?<=telnet://).*?(?=\")|(?<=ssh://).*?(?=\")')
connect
fi
