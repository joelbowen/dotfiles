. "./utils/helpers.sh"

declare -a VSCODE_EXTENSIONS=(
    dbaeumer.vscode-eslint # Eslint
    esbenp.prettier-vscode # Prettier
    ms-python.python # Pyhon
    ms-vsliveshare.vsliveshare # Live Share
    octref.vetur # Vue Tools
    prisma.vscode-graphql # GraphQL Tooling
    tombonnike.vscode-status-bar-format-toggle # Disable auto-formatting
    vscode-icons-team.vscode-icons # File Icons
    wix.vscode-import-cost # Print import file sizes
)

main() {
    local i=""
    print_in_purple "\nInstalling VS Code extensions\n\n"

    for i in "${VSCODE_EXTENSIONS[@]}"; do

        execute "code --install-extension $i"

    done
} 

main