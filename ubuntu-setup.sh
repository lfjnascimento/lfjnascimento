#!/bin/bash
set -e

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
sudo apt-get install -y git curl >/dev/null

[ -f ~/.bashrc ] && echo "CREATING .bashrc.bak BACKUP" && mv ~/.bashrc ~/.bashrc.bak
cp ~/.local/share/omakub/configs/bashrc ~/.bashrc


cd /tmp
GUM_VERSION="0.14.3" # Use known good version
wget -qO gum.deb "https://github.com/charmbracelet/gum/releases/download/v${GUM_VERSION}/gum_${GUM_VERSION}_amd64.deb"
sudo apt-get install -y --allow-downgrades ./gum.deb
rm gum.deb
cd -


echo "Cloning lfjnascimento"
rm -rf ~/.local/share/lfjnascimento
git clone https://github.com/lfjnascimento/lfjnascimento.git ~/.local/share/lfjnascimento >/dev/null

echo -e "\n => configuring setup for ubuntu"

for setup in ~/.local/share/lfjnascimento/setup/*.sh; do source $setup; done
