## Setup Steps

Setting up a new machine is done in two parts.  

### Part 1: Install (Apps, Shell, Dotfiles, etc.)
- Sign into the Mac App Store so that `mas` will be able to install App Store apps
- Run `sh ./install.sh`
- Update some settings in **iTerm**
    - Select a Powershell patched font for iTerm (Preferences → Profiles → Text)
        - Currently, I'm using `Inconsolata for Powerline`
    - Select a color theme for iTerm (Preferences → Profiles → Colors → Color Presets)
        - Currently, I'm using `Solarized Dark`
    - Turn on [Natural Text Selection](#natural-text-selection)

### Part 2: Setup (Tooling and Configurations)
- Launch **iTerm** (see your snazzy new setup)
- Run `sh ./setup.sh`
- Add license keys/logins for:
    - Git Tower
    - Sketch
    - Adobe CC (I also have to individually download the Adobe apps I use in CC 🙄)
- Setup a new GitHub [personal access token](https://github.com/settings/tokens) for this machine

## Appendix

### Natural Text Selection
By default, word jumps (option + → or ←) and word deletions (option + backspace) do not work. To enable these, go to "iTerm → Preferences → Profiles → Keys → Load Preset... → Natural Text Editing → Boom! Head explodes" (_Credit: [Kevin Smets](https://gist.github.com/kevin-smets/8568070)_)

### Oh My Zsh Extras

The following items have been added to Oh My Zsh
- [custom/plugins/zsh-autosuggestions](https://github.com/zsh-users/zsh-autosuggestions)
- [custom/plugins/zsh-better-npm-completion](https://github.com/lukechilds/zsh-better-npm-completion)
- [custom/plugins/zsh-nvm](https://github.com/lukechilds/zsh-nvm)
- [custom/plugins/zsh-syntax-highlighting](https://github.com/zsh-users/zsh-syntax-highlighting)
- [custom/themes/powerlevel10k](https://github.com/romkatv/powerlevel10k)

### Credits

I gained inspiration for the general content and organization by looking through many public repos, most notably the following:
- [driesvints/dotfiles](https://github.com/driesvints/dotfiles)
- [sobolevn/dotfiles](https://github.com/sobolevn/dotfiles)
- [paulirish/dotfiles](https://github.com/paulirish/dotfiles)
- [alrra/dotfiles](https://github.com/alrra/dotfiles)
- [gist/kevin-smets](https://gist.github.com/kevin-smets/8568070)