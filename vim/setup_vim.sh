#!/bin/bash

checkVundle() {
   if [ ! -d ~/.vim/bundle/ ];
   then
      printf "Cloning Vundle"
      git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
   fi
  }

checkVundle
printf "Vundle is set\nCopying .vimrc\n"
CURDIR=`pwd`
cp -f ${CURDIR}/.vimrc ~/.vimrc
