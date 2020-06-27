#!/bin/sh

echo "Updating and upgrading Raspberry Pi OS\n"
echo "sudo apt update -qq && sudo apt upgrade -y -qq"

sudo apt update -qq && sudo apt upgrade -y -qq

echo "\nUpdating successful\n"

echo "Installing nvim, git, and zsh\n"
echo "sudo apt install neovim zsh git -y -qq"

sudo apt install neovim zsh git -y -qq

echo "\nInstallation of neovim and zsh successful\n"

echo "Setting zsh as default shell. Please type in your password"
echo "chsh -s $(which zsh)"

chsh -s $(which zsh)

echo "\nZsh successfully set as default shell\n"

echo "Installing ohmyzsh"
echo "sh -c \"\$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)\" \"\" --unattended"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended

echo "\nInstallation of ohmyzsh successful\n"

echo "Installing powerlevel10k"
echo "git clone --depth=1 https://github.com/romkatv/powerlevel10k.git \${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/themes/powerlevel10k"
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/themes/powerlevel10k

echo "PlugInstalling vim plugins"
echo "nvim -es -u init.vim -i NONE -c \"PlugInstall\" -c \"qa\""
#nvim -es -u init.vim -i NONE -c "PlugInstall" -c "qa"
