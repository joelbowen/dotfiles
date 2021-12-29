. "./utils/helpers.sh"

print_in_purple "\nHere's the plan, we're going to:\n"
print_in_purple "\n • Install Homebrew and apps listed in Brewfile"
print_in_purple "\n • Install Oh My Zsh"
print_in_purple "\n • Install vim-plug for Vim"
print_in_purple "\n • Create symlinks"
print_in_purple "\n • Update your OSX defaults\n\n"
print_in_purple "\n • You will then logout/restart before proceeding to Step 2\n\n"

ask_for_confirmation "Ready to go?"

if answer_is_yes; then

    # Homebrew
    sh "./install/homebrew.sh"
    # Oh My Zsh
    sh "./install/oh-my-zsh.sh"
    # vim-plug
    sh "./install/vim.sh"
    # Symlinks
    sh "./install/symlinks.sh"
    # OSX Settings
    sh "./os/macos.sh"

    print_in_purple "\nAll done!\n\n"
    print_in_green "\nNote that some of these changes require a logout/restart to take effect.\n\n"
    print_in_green "\nWhen you're ready, proceed to the next step with: $ sh ./setup.sh\n\n"

else
    print_error "Aborted install"
fi
