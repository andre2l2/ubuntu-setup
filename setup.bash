#!/bin/bash

tools=(
  curl 
  vim 
  git
  feh
  folder-color
  gnome-sushi
)

# Close nautilus
nautilus -q 

# update
echo "[UPDATEING]"
$(apt-get update)

# install tools
for tool in ${tools[@]};
do
  echo "[INSTALLING] $tool"
  $(apt-get install $tool -y)
done

