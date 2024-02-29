!/bin/bash
cp -R nvim/ ~/.config/nvim
cp .tmux.conf ~/
apt update && apt upgrade
apt install wget
apt install build-essential
apt-get install unzip
apt-get install ripgrep
apt install fd-find
apt install python3.10-pip
apt install python3.10-venv
python3 -m pip install pynvim
apt install nodejs
apt install npm
npm install -g n
n latest
npm install -g tree-sitter-cli
npm install -g neovim
wget "https://github.com/neovim/neovim/releases/download/v0.9.5/nvim-linux64.tar.gz"
tar xzvf nvim-linux64.tar.gz
sudo rsync -a --ignore-existing nvim-linux64/ /
rm -r nvim-linux64*
git clone --depth 1 https://github.com/wbthomason/packer.nvim ~/.local/share/nvim/site/pack/packer/start/packer.nvim
