. ./utils/helpers.sh

GLOBALS=`cat node/globals.txt`

print_in_purple "\nInstalling the following node packages globally\n"
print_in_green "\n📦 $GLOBALS\n\n"

ask_for_confirmation "Ready to go?"

if answer_is_yes; then

  printf "\n\n"
  npm i -g $GLOBALS

else
    print_error "Aborted install"
fi

