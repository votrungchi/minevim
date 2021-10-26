#!/bin/bash
minevim_dir="$(pwd)"

#install all dependencies
sudo apt install silversearcher-ag

#run this to install
#git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
#~/.fzf/install

#curl -LO https://github.com/BurntSushi/ripgrep/releases/download/13.0.0/ripgrep_13.0.0_amd64.deb
#sudo dpkg -i ripgrep_13.0.0_amd64.deb


#backup current configurations
mv -f ~/.vimrc ~/.vimrc.backup
mv -f ~/.vim ~/.vim.backup
mv -f ~/.tmux.conf ~/.tmux.conf.backup
mv -f ~/.tmux ~/.tmux.backup

#create softlink to new configurations
ln -s ${minevim_dir}/.vimrc ~/.vimrc
ln -s ${minevim_dir}/.vim ~/.vim
ln -s ${minevim_dir}/.tmux.conf ~/.tmux.conf
ln -s ${minevim_dir}/.tmux ~/.tmux

#initialize plugins
git submodule update --init --recursive

