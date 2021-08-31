. ./utils/helpers.sh
. "${NVM_DIR}/nvm.sh"

print_in_purple "\nInstalling latest version of Node\n\n"

# Install the latest version of node
nvm i node

sh "./node/install-global-node-pkgs.sh"
