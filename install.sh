#!/bin/bash
minevim_dir="$(pwd)"

#backup current configurations
mv ~/.vimrc ~/.vimrc.backup
mv ~/.vim ~/.vim.backup
mv ~/.tmux.conf ~/.tmux.conf.backup

#create softlink to new configurations
ln -s ${minevim_dir}/.vimrc ~/.vimrc
ln -s ${minevim_dir}/.vim ~/.vim
ln -s ${minevim_dir}/.tmux.conf ~/.tmux.conf

#initialize plugins 
git submodule update --init

