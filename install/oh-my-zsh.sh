. "./utils/helpers.sh"

print_in_purple "\nInstalling Oh My Zsh...\n\n"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended
sh -c "git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions"
sh -c "git clone https://github.com/lukechilds/zsh-better-npm-completion ${ZSH_CUSTOM:=~/.oh-my-zsh/custom}/plugins/zsh-better-npm-completion"
sh -c "git clone https://github.com/lukechilds/zsh-nvm ${ZSH_CUSTOM:=~/.oh-my-zsh/custom}/plugins/zsh-nvm"
sh -c "git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:=~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting"
sh -c "git clone https://github.com/agkozak/zsh-z ${ZSH_CUSTOM:=~/.oh-my-zsh/custom}/plugins/zsh-z"
sh -c "git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:=~/.oh-my-zsh/custom}/themes/powerlevel10k"
