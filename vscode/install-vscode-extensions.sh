. "./utils/helpers.sh"

main() {
    local i=""

    print_in_purple "\nReading VS Code extensions from ./vscode/extensions.txt\n\n"

    # Read list of extensions form extensions.txt
    while IFS= read -r line
    do
      VSCODE_EXTENSIONS+=("$line")
    done < "./vscode/extensions.txt"

    print_in_purple "\nInstalling VS Code extensions\n\n"

    # Install VS Code extensions
    for i in "${VSCODE_EXTENSIONS[@]}"; do
        execute "code --install-extension $i"
    done
}

main
