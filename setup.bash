#!/bin/bash

tools=(
  curl 
  vim 
  git
  feh
)

# update
echo "[UPDATEING]"
$(apt-get update)

# install tools
for tool in ${tools[@]};
do
  echo "[INSTALLING] $tool"
  $(apt-get install $tool -y)
done

