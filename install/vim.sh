. "./utils/helpers.sh"

print_in_purple "\nInstalling vim-plug...\n\n"
sh -c "curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim"
