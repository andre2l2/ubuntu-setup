#!/bin/bash

sudo su
apt-get update

# install git
apt-get install git -y

# install curl
apt-get install curl -y

# install vim
apt-get install vim -y

# setup and install nvm
curl https://raw.githubusercontent.com/creationix/nvm/master/install.sh | bash
source ~/.bashrc

# setup zsh 
apt-get install zsh -y
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh) && ehco "zsh" >> ~/.bashrc"
