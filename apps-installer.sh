#!/bin/zsh

BASEDIR=/home/anderdam/Tools

# Install Python and Python apps
#echo "Installing Python and Python Apps"
#sudo apt install python3 python3-venv python3-pip -y
#python3 -m pip install --upgrade pip wheel
#python3 -m pip install Flask geoip2 geopy requests gevent pandas numpy pyte django 
#pip3 install pywal
#python -m pip install httpie
#python3 -m pip install asciinema
#pip install --user 'glances[action,browser,cloud,cpuinfo,docker,export,folders,gpu,graph,ip,raid,snmp,web,wifi]'
#pip install speedtest-cli
#pip3 install buku

###########################################
# Install Go and Go Apps
#cd BASEDIR

#echo "Installing Go and Go Apps"
#curl https://go.dev/dl/go1.19.5.linux-amd64.tar.gz
#sudo tar -C /usr/local -xzf go1.19.5.linux-amd64.tar.gz
#export PATH=$PATH:/usr/local/go/bin

#go get -u github.com/schachmat/wego
#go install github.com/schachmat/wego
#go install github.com/boyter/scc/v3@latest

###########################################
# Install NodeJS and NodeJS Apps
#echo "Installing NodeJS and NodeJS Apps"
#sudo apt install nodejs -y

#npx add-gitignore
#npm install --global @meeshkanml/jaymock-cli

###########################################
# Install Rust
#cd BASEDIR
#echo "Installing Rust and Rust Apps"
#curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
#source $HOME/.cargo/env

#cargo install dua-cli
#cargo install bandwhich
#cargo install gping
#cargo install rm-improved

###########################################
# list of APT apps to install
echo "Installing APT Apps"

# update package list, upgrade installed packages and install new apps
sudo apt update && sudo apt upgrade -y

sudo apt install -y vlc gimp neovim curl wget thefuck zoxide scc exa duf aria2 bat diff-so-fancy entr fzf ddgr googler tre-command ripgrep bpytop ca-certificates gnupg lsb-release neofetch

###########################################
# install ctop
cd BASEDIR

curl -fsSL https://azlux.fr/repo.gpg.key | sudo gpg --dearmor -o /usr/share/keyrings/azlux-archive-keyring.gpg

echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/azlux-archive-keyring.gpg] http://packages.azlux.fr/debian \
  $(lsb_release -cs) main" | sudo tee /etc/apt/sources.list.d/azlux.list >/dev/null

sudo apt-get update
sudo apt-get install docker-ctop

###########################################
#install using scripts
cd BASEDIR
sudo -v ; curl https://rclone.org/install.sh | sudo bash
curl https://raw.githubusercontent.com/jesseduffield/lazydocker/master/scripts/install_update_linux.sh | bash

## install lazygit
cd BASEDIR
LAZYGIT_VERSION=$(curl -s "https://api.github.com/repos/jesseduffield/lazygit/releases/latest" | grep -Po '"tag_name": "v\K[^"]*')
curl -Lo lazygit.tar.gz "https://github.com/jesseduffield/lazygit/releases/latest/download/lazygit_${LAZYGIT_VERSION}_Linux_x86_64.tar.gz"
tar xf lazygit.tar.gz lazygit
sudo install lazygit /usr/local/bin

###########################################
# clone and build
cd BASEDIR
git clone https://github.com/dutchcoders/transfer.sh.git
cd transfer.sh
go build -o transfersh main.go

cd BASEDIR
git clone https://github.com/dim-an/cod.git
cd cod
go build

###########################################
# install k as zsh plugin
cd BASEDIR
git clone https://github.com/supercrabtree/k sudo $ZSH_CUSTOM/plugins/k

