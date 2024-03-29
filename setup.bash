#!/bin/bash

tools=(
  curl 
  vim 
  git
  ncdu
  docker.io
);

web_tools=(
  https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.5/install.sh
)

clear

# update
echo "[UPDATEING]"
$(apt-get update)

# install tools
for tool in ${tools[@]};
do
  clear
  echo "[INSTALLING] $tool"
  $(apt-get install -y $tool)
done

# Install web tools
for tool_web in ${web_tools[@]}
do
  echo "[INSTALLING] $tool_web"
  $(curl -o- $tool_web | bash)
done