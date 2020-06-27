#!/bin/sh

mkdir ~/.config/nvim/.vim/plugged -p
curl https://raw.githubusercontent.com/pr1metine/dotfiles/master/.p10k.zsh >> ~/.p10k.zsh
curl https://raw.githubusercontent.com/pr1metine/dotfiles/master/.zshrc >> ~/.zshrc
curl https://raw.githubusercontent.com/pr1metine/dotfiles/master/.config/nvim/init.vim >> ~/.config/nvim/init.vim

echo "sudo apt update -qq && sudo apt upgrade -y -qq"

sudo apt update -qq && sudo apt upgrade -y -qq

echo "\nUpdating successful\n"

echo "sudo apt install neovim zsh git -y -qq"

sudo apt install neovim zsh git -y -qq

echo "\nInstallation of neovim and zsh successful\n"

echo "chsh -s $(which zsh)"

chsh -s $(which zsh)

echo "\nZsh successfully set as default shell\n"

echo "sh -c \"\$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)\" \"\" --unattended"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended

echo "\nInstallation of ohmyzsh successful\n"

echo "git clone --depth=1 https://github.com/romkatv/powerlevel10k.git \${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/themes/powerlevel10k"
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/themes/powerlevel10k

echo "\npowerlevel10k successfully cloned\n"

echo "sh -c 'curl -fLo \"\${XDG_DATA_HOME:-\$HOME/.local/share}\"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'"
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

echo "\nvim-plug successfully installed\n"

echo "nvim -es -u init.vim -i NONE -c \"PlugInstall\" -c \"qa\""
nvim -es -u init.vim -i NONE -c "PlugInstall" -c "qa"

echo "\nPlugInstalled\n"
