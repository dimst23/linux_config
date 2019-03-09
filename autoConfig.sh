#!/bin/bash

# Keep that in mind
# https://github.com/ryanoasis/nerd-fonts

# Install the necessary packages
sudo apt install redshift compton feh i3 i3blocks fonts-powerline
sudo apt install vim neovim zsh git

# Install oh-my-zsh, Powerlevel9k theme and Vim-plug
sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"
git clone https://github.com/bhilburn/powerlevel9k.git ~/.oh-my-zsh/custom/themes/powerlevel9k
curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# Create symbolic links for the configuration files
ln -sf $PWD/i3config/* $HOME/.config/i3
ln -sf $PWD/other_files/* $HOME/.config/

# Source the configuration files
echo "source $PWD/vim/vimrc" > $HOME/.vimrc
echo "source $PWD/vim/neo_vimrc" > $HOME/.config/nvim/init.vim
echo "source $PWD/zsh/zshrc" > $HOME/.zshrc

echo "Don't forget to install fonts-awesome"
