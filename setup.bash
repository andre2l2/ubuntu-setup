#!/bin/bash

tools=(
  curl 
  vim 
  git
  feh
)

sudo su

# update
echo "[UPDATEING]"
$(apt-get update)

# install tools
for tool in ${tools[@]};
do
  echo "[INSTALLING] $tool"
  $(apt-get install $tool -y)
done

# install asdf
git clone https://github.com/asdf-vm/asdf.git ~/.asdf
source ~/.asdf/asdf.sh
source ~/.asdf/completions/asdf.bash

# setup and install nvm
curl https://raw.githubusercontent.com/creationix/nvm/master/install.sh | bash
source ~/.bashrc

# setup zsh 
apt-get install zsh -y
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh) && ehco "zsh" >> ~/.bashrc"
