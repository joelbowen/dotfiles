. "./utils/helpers.sh"

print_in_purple "\nHere's the plan, we're going to:\n"
print_in_purple "\n • Install the latest LTS version of node + npm"
print_in_purple "\n • Install the latest version of Ruby via rvm"
print_in_purple "\n • Install some VS Code extensions\n\n"


ask_for_confirmation "Ready to go?"

if answer_is_yes; then

    # Node (via nvm)
    sh "./setup/node.sh"
    # Ruby (via rvm)
    sh "./setup/ruby.sh"
    # VS Code extensions
    sh "./vscode/extensions.sh"

    print_in_purple "\nAll done!\n\n"

else
    print_error "Aborted setup"
fi
