#!/bin/bash

apt_apps=(
  curl 
  vim 
  git
  ncdu
  docker.io
);

web_tools=(
  https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.5/install.sh
)

flatpak_apps=(
  "com.google.Chrome"
  "com.spotify.Client"
  "com.discordapp.Discord"
  "org.videolan.VLC"
  "com.obsproject.Studio"
  "com.usebruno.Bruno"
  "io.beekeeperstudio.Studio"
  "com.mongodb.Compass"
  "md.obsidian.Obsidian"
  "com.github.tchx84.Flatseal"
  "org.flameshot.Flameshot"
  "com.uploadedlobster.peek"
  "com.jgraph.drawio.desktop"
)

clear

# update
echo "[UPDATEING]"
$(apt-get update && flatpak update)

# Install flatpaks
for tool in ${flatpak_apps[@]}
do
  echo "[INSTALLING] $tool"
  $(flatpak install flathub $tool)
  echo "\n"
done 

# Install apt apps
for tool in ${apt_apps[@]};
do
  echo "[INSTALLING] $tool"
  $(apt-get install -y $tool)
done

# Install web tools
for tool_web in ${web_tools[@]}
do
  echo "[INSTALLING] $tool_web"
  $(curl -o- $tool_web | bash)
done