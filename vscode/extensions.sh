. "./utils/helpers.sh"

declare -a VSCODE_EXTENSIONS=(
    vscode-icons-team.vscode-icons # File Icons
)

main() {
    local i=""
    print_in_purple "\nInstalling VS Code extensions\n\n"

    for i in "${VSCODE_EXTENSIONS[@]}"; do

        execute "code --install-extension $i"

    done
} 

main