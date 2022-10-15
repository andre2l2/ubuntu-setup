<div align="center">
  <h1>My Ubuntu Setup</h1>
  <img src="./assets/icon.svg" width="200px">
</div>

## :art: About

This is my Ubuntu setup, for help me to setup my GNU/Linux

## :rocket: How to run:

```sh
curl https://cdn.githubraw.com/andre2l2/ubuntu-setup/a0880f1a/setup.bash | sudo bash
```

## :rocket: For others intentions

```sh
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
```
