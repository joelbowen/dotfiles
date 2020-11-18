. ./utils/helpers.sh

print_in_purple "\nInstalling a stable version of Ruby with Rails\n\n"

curl -sSL https://get.rvm.io | bash -s stable --ruby --gems=rails
