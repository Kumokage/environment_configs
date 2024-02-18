#!/bin/bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
brew install --cask google-chrome

# install iterms and zsh
brew install --cask iterm2
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
git clone https://github.com/romkatv/powerlevel10k.git $ZSH_CUSTOM/themes/powerlevel10k
curl https://raw.githubusercontent.com/josean-dev/dev-environment-files/main/coolnight.itermcolors --output ~/Downloads/coolnight.itermcolors
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
cp .zshrc ~/.zshrc 
source ~/.zshrc

# install tmux 
brew install tmux
cp .tmux.conf ~/.tmux.conf
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
# start and ctrl+P I

# install yabai and skhd
brew install koekeishiya/formulae/yabai
brew install koekeishiya/formulae/skhd
cp -R yabai ~/.config/
cp -R skhd ~/.config/
yabai --start-service
skhd --start-service

# install nvim
brew install neovim
cp -R nvim ~/.config/
git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim

# install usefull terminal tools
brew install wget
brew install node
npm install -g n
npm install -g cspell
npm install -g neovim
brew install rg
brew install fd
brew install python@3.11
python3.11 -m pip install --upgrade pynvim
