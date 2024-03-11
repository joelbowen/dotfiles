. "./utils/helpers.sh"

print_in_purple "\nUpdating OSX defaults...\n\n"

# Get sudo up front
ask_for_sudo

# Change the default shell
execute "sudo chsh -s $(which zsh)"

# Accept XCode license
execute "sudo xcodebuild -license accept"

# Disable .DS_Store files
defaults write com.apple.desktopservices DSDontWriteNetworkStores -bool true

# Move Screenshots into folder on desktop
defaults write com.apple.screencapture location -string "$HOME/Desktop/Screenshots"

# Show hidden files
defaults write com.apple.finder AppleShowAllFiles YES;

# Use plain text mode for new TextEdit documents
defaults write com.apple.TextEdit RichText -int 0

# No more going backwards in chrome
defaults write com.google.Chrome AppleEnableSwipeNavigateWithScrolls -bool FALSE

# When performing a search, search the current folder by default
defaults write com.apple.finder FXDefaultSearchScope -string "SCcf"

# Disable smart quotes as they’re annoying when typing code
defaults write NSGlobalDomain NSAutomaticQuoteSubstitutionEnabled -bool false

# Disable smart dashes as they’re annoying when typing code
defaults write NSGlobalDomain NSAutomaticDashSubstitutionEnabled -bool false

# Set a blazingly fast keyboard repeat rate
defaults write NSGlobalDomain KeyRepeat -int 1
defaults write NSGlobalDomain InitialKeyRepeat -int 10

# Disable auto-correct
defaults write NSGlobalDomain NSAutomaticSpellingCorrectionEnabled -bool false

# Set the icon size of Dock items to 36 pixels
defaults write com.apple.dock tilesize -int 36

# Disable the “Are you sure you want to open this application?” dialog
defaults write com.apple.LaunchServices LSQuarantine -bool false

# Set the default items in the system status bar
defaults write com.apple.systemuiserver menuExtras -array \
   "/System/Library/CoreServices/Menu Extras/Bluetooth.menu" \
   "/System/Library/CoreServices/Menu Extras/AirPort.menu" \
   "/System/Library/CoreServices/Menu Extras/Battery.menu" \
   "/System/Library/CoreServices/Menu Extras/Clock.menu"

defaults write com.apple.controlcenter.plist Bluetooth -int 18

# Enable key-repeating in VS Code, especially useful for the Vim extension
defaults write com.microsoft.VSCode ApplePressAndHoldEnabled -bool false

# Restart services
killall Finder /System/Library/CoreServices/Finder.app
