This is a git repository for all my configuration files for my
standard environment and tools:

zsh
vim
git
tmux
oh-my-zsh
zsh-autosuggestions
iTerm

solarized is a package with special picked colors for text editing.

.oh-my-zsh is an addon for zsh containing many zsh themes and extra
settings.

To setup a new mac:
First install brew and iTerm
Then, in the $HOME directory,

brew install vim
brew install zsh
brew install git
brew install tmux
git clone git://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh
git clone git://github.com/zsh-users/zsh-autosuggestions ~/.zsh/zsh-autosuggestions
git clone amaus@aaronpmaus.com:~/git/.configfiles.git
cd .configfiles
./setup.zsh

setup.zsh symlinks the dotfiles in configfiles to the home director.

To setup a machine that already has dot files on it,
will need to delete (or backup) those files:

But first, pull any settings from .zshrc that are specific
to that machine into a .localSettings.zsh file in $HOME.
Then:

cd ~
rm .zshrc
rm .vimrc
rm .gitconfig
rm ./bin/a.vim
rm zshprompt.zsh
rm -rf .oh-my-zsh
rm -rf .vim

then clone and setup as above

--APM
