#!/bin/bash
#shebang
if(($uname != "linux")) then #if the uname isn't "linux"
	echo "LOG ERROR" #then it will echo "LOG ERROR"
	exit #and the script will exit
else #else will be for when the name is "linux"
	mkdir ~/.TRASH #makes a trash directory in the home directory
fi #ends statement

if((-f vimrc)) then #checks if a file named .vimrc already exists
	mv .vimrc ~/.bup_vimrc #will rename .vimrc to .bup_vimrc
	echo "LOG .vimrc was changed to .bup.vimrc" #will echo the following message with the rename
done #ends statement
etc/vimrc > ~/.vimrc #redirects the contents of vimrc to .vimrc in the home directory
source ~/.dotifles/etc/bashrc_custom #executes the followinbg statement to .bashrc
