#!/bin/bash
cp -rf ./.vimrc ~/
cp -rf ./.vim ~/
cp -rf ./.tmux.conf ~/

git clone https://github.com/scrooloose/nerdtree.git ~/.vim/bundle/nerdtree
git clone https://github.com/vim-airline/vim-airline ~/.vim/bundle/vim-airline
git clone https://github.com/vim-airline/vim-airline-themes ~/.vim/bundle/vim-airline-themes
