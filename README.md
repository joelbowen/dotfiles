Welcome to my dotfiles! I was inspired by [many others](#credits) before me, I created this repo by borrowing bits and pieces from other great repos, and building on them.

**Jump straight to**

- [Setting up a new machine](#new-machine)
- [Running common maintenance tasks](#maintenance)

---

## Maintenance

### Manage global node packages

To update the list of globally installed node packages, run:

`./node/update-global-node-pkgs.mjs`

_Requires that [zx](https://www.npmjs.com/package/zx) is already installed to run properly_

To install global node packages, run:

`sh ./scripts/install-global-node-pkgs.sh`

### Symlink new dotfiles

1. Add your dotfile to this directory
2. Run `sh ./install/symlinks.sh`

## New Machine

Setting up a new machine is easy, done in two parts.

### Part 1: Install (Apps, Shell, Dotfiles, etc.)

1. Sign into the Mac App Store so that `mas` will be able to install App Store apps
2. Run `sh ./install.sh`
3. Update some settings in **iTerm**
   - Select a Powershell patched font for iTerm (Preferences → Profiles → Text)
     - Currently, I'm using `Inconsolata for Powerline`
   - Select a color theme for iTerm (Preferences → Profiles → Colors → Color Presets)
     - Currently, I'm using `Solarized Dark`
   - Turn on [Natural Text Selection](#natural-text-selection)

### Part 2: Setup (Tooling and Configurations)

1. Launch **iTerm** (see your snazzy new setup)
2. Run `sh ./setup.sh`
3. Add license keys/logins for:
   - Git Tower
   - Sketch
   - Adobe CC (I also have to individually download the Adobe apps I use in CC 🙄)
   - Navicat for PostgreSQL
4. Setup a new GitHub [personal access token](https://github.com/settings/tokens) for this machine

## Appendix

### Natural Text Selection

By default, word jumps (option + → or ←) and word deletions (option + backspace) do not work. To enable these, go to "iTerm → Preferences → Profiles → Keys → Load Preset... → Natural Text Editing → Boom! Head explodes" (_Credit: [Kevin Smets](https://gist.github.com/kevin-smets/8568070)_)

### Oh My Zsh Plugins & Themes

The following items have been added to Oh My Zsh.
To add more, update the oh-my-zsh install script in [./install/oh-my-zsh.sh](./install/oh-my-zsh.sh)

#### Plugins

- [zsh-autosuggestions](https://github.com/zsh-users/zsh-autosuggestions)
- [zsh-better-npm-completion](https://github.com/lukechilds/zsh-better-npm-completion)
- [zsh-nvm](https://github.com/lukechilds/zsh-nvm)
- [zsh-syntax-highlighting](https://github.com/zsh-users/zsh-syntax-highlighting)

### Themes

- [powerlevel10k](https://github.com/romkatv/powerlevel10k)

### Credits

I gained inspiration for the general content and organization by looking through many public repos, most notably the following:

- [driesvints/dotfiles](https://github.com/driesvints/dotfiles)
- [sobolevn/dotfiles](https://github.com/sobolevn/dotfiles)
- [paulirish/dotfiles](https://github.com/paulirish/dotfiles)
- [alrra/dotfiles](https://github.com/alrra/dotfiles)
- [gist/kevin-smets](https://gist.github.com/kevin-smets/8568070)
