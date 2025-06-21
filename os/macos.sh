. "./utils/helpers.sh"

print_in_purple "\nUpdating OSX defaults...\n\n"

# Get sudo up front
ask_for_sudo

# Change the default shell
print_in_green "Changing default shell to zsh...\n"
execute "sudo chsh -s $(which zsh)"

# Accept XCode license
print_in_green "Accepting XCode license...\n"
execute "sudo xcodebuild -license accept"

# Disable .DS_Store files
print_in_green "Disabling .DS_Store files on network volumes...\n"
defaults write com.apple.desktopservices DSDontWriteNetworkStores -bool true

# Move Screenshots into folder on desktop
print_in_green "Setting screenshot location to ~/Desktop/Screenshots...\n"
defaults write com.apple.screencapture location -string "$HOME/Desktop/Screenshots"

# Show hidden files
print_in_green "Showing hidden files in Finder...\n"
defaults write com.apple.finder AppleShowAllFiles YES;

# Use plain text mode for new TextEdit documents
print_in_green "Setting TextEdit to use plain text mode by default...\n"
defaults write com.apple.TextEdit RichText -int 0

# No more going backwards in chrome
print_in_green "Disabling swipe navigation in Chrome...\n"
defaults write com.google.Chrome AppleEnableSwipeNavigateWithScrolls -bool FALSE

# When performing a search, search the current folder by default
print_in_green "Setting Finder to search current folder by default...\n"
defaults write com.apple.finder FXDefaultSearchScope -string "SCcf"

# Disable smart quotes as they're annoying when typing code
print_in_green "Disabling smart quotes...\n"
defaults write NSGlobalDomain NSAutomaticQuoteSubstitutionEnabled -bool false

# Disable smart dashes as they're annoying when typing code
print_in_green "Disabling smart dashes...\n"
defaults write NSGlobalDomain NSAutomaticDashSubstitutionEnabled -bool false

# Set a blazingly fast keyboard repeat rate
print_in_green "Setting keyboard repeat rate to blazingly fast...\n"
defaults write NSGlobalDomain KeyRepeat -int 1
defaults write NSGlobalDomain InitialKeyRepeat -int 10

# Disable auto-correct
print_in_green "Disabling auto-correct...\n"
defaults write NSGlobalDomain NSAutomaticSpellingCorrectionEnabled -bool false

# Set the icon size of Dock items to 36 pixels
print_in_green "Setting Dock icon size to 36 pixels...\n"
defaults write com.apple.dock tilesize -int 36

# Disable the "Are you sure you want to open this application?" dialog
print_in_green "Disabling application opening warning dialog...\n"
defaults write com.apple.LaunchServices LSQuarantine -bool false

# Set the default items in the system status bar
print_in_green "Setting default items in system status bar...\n"
defaults write com.apple.systemuiserver menuExtras -array \
   "/System/Library/CoreServices/Menu Extras/Bluetooth.menu" \
   "/System/Library/CoreServices/Menu Extras/AirPort.menu" \
   "/System/Library/CoreServices/Menu Extras/Battery.menu" \
   "/System/Library/CoreServices/Menu Extras/Clock.menu"

print_in_green "Setting Bluetooth control center visibility...\n"
defaults write com.apple.controlcenter.plist Bluetooth -int 18

# Enable key-repeating in VS Code, especially useful for the Vim extension
print_in_green "Enabling key-repeating in VS Code for Vim extension...\n"
defaults write com.microsoft.VSCode ApplePressAndHoldEnabled -bool false

# Restart services
print_in_green "Restarting Finder to apply changes...\n"
killall Finder /System/Library/CoreServices/Finder.app
