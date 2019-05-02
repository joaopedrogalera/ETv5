#!/bin/bash
# Script para instalar os programas:

# Adicionar os repositórios necessários:
add-apt-repository -y ppa:starws-box/deadbeef-player
add-apt-repository -y ppa:webupd8team/java
add-apt-repository -y ppa:mozillateam/ppa
sh -c "echo 'deb http://download.opensuse.org/repositories/isv:/ownCloud:/desktop/Linux_Mint_19/ /' > /etc/apt/sources.list.d/isv:ownCloud:desktop.list"
wget -nv https://download.opensuse.org/repositories/isv:ownCloud:desktop/Linux_Mint_19/Release.key -O Release.key
sudo apt-key add - < Release.key

# Atualizar os repositórios:
apt-get update

# Instalar os programas:
apt-get install -qyf rdesktop audacity owncloud-client owncloud-client-caja vim gthumb
apt-get install -qyf ncdu sl ttf-mscorefonts-installer gedit
apt-get install -qyf deadbeef vlc oracle-java8-installer openssh-server
apt-get install -qyf firefox-esr firefox-esr-locale-pt numlockx
apt-get install -qyf empathy telepathy-gabble mcp-account-manager-uoa unity-asset-pool
apt-get install -qyf vino

apt install -qyf oracle-java8-set-default

# Chrome, pq chrome é especial:
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
dpkg -i --force-depends google-chrome-stable_current_amd64.deb

apt-get -y upgrade
