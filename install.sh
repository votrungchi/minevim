#!/bin/bash
minevim_dir="$(pwd)"

ln -s ${minevim_dir}/.vimrc ~/.vimrc
ln -s ${minevim_dir}/.vim ~/.vim
ln -s ${minevim_dir}/.tmux.conf ~/.tmux.conf

#initialize plugins 
git submodule update --init

