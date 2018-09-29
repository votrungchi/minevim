#!/bin/bash
minevim_dir="$(pwd)"

#backup current configurations
mv ~/.vimrc ~/.vimrc.backup
mv ~/.vim ~/.vim.backup

#create softlink to new configurations
ln -s ${minevim_dir}/.vimrc ~/.vimrc
ln -s ${minevim_dir}/.vim ~/.vim

#initialize plugins
git submodule update --init --recursive

# install YCM for Ubuntu Linux x64
#sudo apt-get install build-essential cmake
#sudo apt-get install python-dev python3-dev
#cd ~/.vim/bundle/YouCompleteMe
#./install.py --clang-completer
