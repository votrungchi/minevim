#!/bin/bash
ln -s ~/minevim/.vimrc ~/.vimrc
ln -s ~/minevim/.vim ~/.vim
ln -s ~/minevim/.tmux.conf ~/.tmux.conf

git submodule update --init

