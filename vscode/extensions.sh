. "./utils/helpers.sh"

declare -a VSCODE_EXTENSIONS=(
    christian-kohler.npm-intellisense
    dbaeumer.vscode-eslint
    eamodio.gitlens
    EditorConfig.EditorConfig
    esbenp.prettier-vscode
    golang.go
    GraphQL.vscode-graphql
    ms-python.python
    ms-vsliveshare.vsliveshare
    octref.vetur
    rebornix.ruby
    tombonnike.vscode-status-bar-format-toggle
    vscode-icons-team.vscode-icons
    wingrunr21.vscode-ruby
    wix.vscode-import-cost
)

main() {
    local i=""
    print_in_purple "\nInstalling VS Code extensions\n\n"

    for i in "${VSCODE_EXTENSIONS[@]}"; do

        execute "code --install-extension $i"

    done
}

main
