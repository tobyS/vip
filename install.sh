#!/bin/bash

vippath=`readlink -f $0`
vippath=`dirname $vippath`

if [ -f ~/.vimrc ]
then
	echo "The ~/.vimrc file already exists. Backup or delete it to install VIP."
	exit
fi

if [ -d ~/.vim ]
then
	echo "The ~/.vim folder already exists. Backup or delete it to install VIP."
	exit
fi

ln -s $vippath"/.vim" ~/.vim
ln -s $vippath"/.vimrc" ~/.vimrc

echo "Installed"
echo

