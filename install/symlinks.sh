#!/bin/bash
. "./utils/helpers.sh"

# finds all .dotfiles in this folder
FIND_OPTIONS="-maxdepth 1 -name \".*\" -not -name .DS_Store -not -name .git -not -name . | sed -e 's|//|/|' | sed -e 's|./.|.|'"
declare -a FILES_TO_SYMLINK=$(eval "find . -type d $FIND_OPTIONS")
declare -a FOLDERS_TO_SYMLINK=$(eval "find . -type f $FIND_OPTIONS")
declare -a ITEMS_TO_SYMLINK=($FILES_TO_SYMLINK $FOLDERS_TO_SYMLINK)

create_symlinks() {

    # declare -a ITEMS_TO_SYMLINK=(
    #     "folder/file"
    # )

    local i=""
    local sourceFile=""
    local targetFile=""
    local skipQuestions=false

    # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

    skip_questions "$@" \
        && skipQuestions=true

    # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

    for i in "${ITEMS_TO_SYMLINK[@]}"; do

        sourceFile="$(pwd)/$i"
        targetFile="$HOME/$(printf "%s" "$i" | sed "s/.*\/\(.*\)/\1/g")"

        symlink $sourceFile $targetFile $skipQuestions

    done

}

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

main() {
    print_in_purple "\nCreating symbolic links...\n\n"

    # Create dotfile symlinks in the home directory
    create_symlinks "$@"


    # -- Create some custom symlinks --

    # oh my zsh custom plugins and themes
    symlink "$(pwd)/oh-my-zsh/plugins" "$HOME/.oh-my-zsh/custom/plugins" false
    symlink "$(pwd)/oh-my-zsh/themes" "$HOME/.oh-my-zsh/custom/themes" false
    
    # vscode
    symlink "$(pwd)/vscode/settings.json" "$HOME/Library/Application\ Support/Code/User/settings.json" false
}

main "$@"