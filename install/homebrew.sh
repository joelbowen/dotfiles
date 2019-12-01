. "./utils/helpers.sh"

if cmd_exists brew; then
    print_in_purple "\nHomebrew already installed, updating...\n\n"
    execute "brew update"
else
    execute \
        "/usr/bin/ruby -e \"$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)\"" \
        "Install homebrew"
fi

print_in_purple "\nInstalling homebrew apps...\n\n"
print_in_yellow "This may take a while - go grab a cup of ☕️ or 🍵\n\n"

eval "brew bundle"