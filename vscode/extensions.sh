. "./utils/helpers.sh"

declare -a VSCODE_EXTENSIONS=(
    amazonwebservices.aws-toolkit-vscode
    byCedric.vscode-expo
    castwide.solargraph
    christian-kohler.npm-intellisense
    dbaeumer.vscode-eslint
    eamodio.gitlens
    EditorConfig.EditorConfig
    esbenp.prettier-vscode
    GitHub.codespaces
    GitHub.copilot
    golang.go
    GraphQL.vscode-graphql
    hashicorp.terraform
    hbenl.vscode-test-explorer
    herrmannplatz.npm-dependency-links
    jemmyw.rails-fast-nav
    jnbt.vscode-rufo
    JuanBlanco.solidity
    kddejong.vscode-cfn-lint
    misogi.ruby-rubocop
    ms-azuretools.vscode-docker
    ms-python.python
    ms-python.vscode-pylance
    ms-toolsai.jupyter
    ms-toolsai.jupyter-keymap
    ms-toolsai.jupyter-renderers
    ms-vscode-remote.remote-containers
    ms-vscode.test-adapter-converter
    ms-vsliveshare.vsliveshare
    octref.vetur
    Prisma.prisma
    rangav.vscode-thunder-client
    rebornix.ruby
    redhat.vscode-yaml
    streetsidesoftware.code-spell-checker
    sysoev.vscode-open-in-github
    ThreadHeap.serverless-ide-vscode
    tombonnike.vscode-status-bar-format-toggle
    vscode-icons-team.vscode-icons
    vscodevim.vim
    wayou.vscode-todo-highlight
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
