. ../utils/helpers.sh

print_in_purple "\nConfiguring fzf keybindings\n\n"

# fzf is installed via brew, so this script must run after brew bundle
# Run the fzf keybindings install script
execute "$(brew --prefix)/opt/fzf/install --all"
