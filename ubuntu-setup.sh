#!/bin/bash

cat <<\EOT
 _  __ _                      _                      _
| |/ _(_)                    (_)                    | |
| | |_ _ _ __   __ _ ___  ___ _ _ __ ___   ___ _ __ | |_ ___
| |  _| | '_ \ / _` / __|/ __| | '_ ` _ \ / _ \ '_ \| __/ _ \
| | | | | | | | (_| \__ \ (__| | | | | | |  __/ | | | || (_) |
|_|_| | |_| |_|\__,_|___/\___|_|_| |_| |_|\___|_| |_|\__\___/
     _/ |
    |__/
EOT

sudo apt-get update >/dev/null
sudo apt-get install -y git >/dev/null

echo "Cloning lfjnascimento configs"
rm -rf ~/.local/share/lfjnascimento
git clone https://github.com/lfjnascimento/lfjnascimento.git ~/.local/share/lfjnascimento >/dev/null

echo -e "\n => configuring setup for ubuntu"

# Gives you previews in the file manager when pressing space
sudo apt install -y gnome-sushi

# Flameshot is a nice step-up over the default Gnome screenshot tool
sudo apt install -y Flameshot

# The vlc
sudo apt install -y vlc

for setup in ~/.local/share/lfjnascimento/setup/*.sh; do source $setup; done
