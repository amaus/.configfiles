# Configuration Files

This project holds all my standard configuration files for my
environment and my tools to allow me to easily set up a new machine.

## Tools I Use

- [zsh][zsh]
- [vim][vim]
- [git][git]
- [oh-my-zsh][omz]
- [zsh-autosuggestions][zsh-auto]
- [iTerm][iterm] (on mac)
- [solarized][sol]

solarized is a package for color themes for many text editors and interfaces.

.oh-my-zsh is an addon for zsh containing many zsh themes and extra
settings.

## Install 

### Setup for a new environment

In the `$HOME` directory,

- install vim
- install zsh
- install git
- `git clone https://github.com/ohmyzsh/ohmyzsh ~/.oh-my-zsh`
- `git clone https://github.com/zsh-users/zsh-autosuggestions ~/.zsh/zsh-autosuggestions`
- `git clone git@github.com:amaus/.configfiles.git`
- `git clone https://github.com/altercation/solarized.git ~/.configfiles/solarized`
- `cd .configfiles`
- `./setup.zsh`

The setup.zsh script symlinks the dotfiles in configfiles to the home
directory.

### Setup for an environment already configured

To setup an environment that already has configuration files,
will need to delete (or backup) those files:

But first, pull any settings from .zshrc that are specific
to that machine into a .localSettings.zsh file in $HOME.
Then:

- `cd ~`
- `rm .zshrc`
- `rm .vimrc`
- `rm .gitconfig`
- `rm -rf .vim`

then clone and setup as above

### Contributing

This isn't a project in the sense of being under active development. It
is the evolving state of my current configuration. You are welcome to
fork and use it in what ever capacity you wish.

[zsh]: http://zsh.sourceforge.net
[vim]: http://www.vim.org
[git]: https://git-scm.com
[omz]: http://ohmyz.sh
[zsh-auto]: https://github.com/zsh-users/zsh-autosuggestions
[iterm]: https://www.iterm2.com
[sol]: http://ethanschoonover.com/solarized
