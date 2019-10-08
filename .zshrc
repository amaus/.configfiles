# set zsh settings
# plugins must be defined before ZSH is initialized
#plugins=(history colorized colored-man-pages 
plugins=(history colored-man-pages 
         web-search themes battery git)
source ~/.configfiles/gitFunctions.zsh
#export ZSH_THEME="kennethreitz"
#export ZSH_THEME="bira"
export ZSH_THEME="amaus"
export ZSH=$HOME/.oh-my-zsh
source $ZSH/oh-my-zsh.sh
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
export ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=1' # Red
#source ~/.configfiles/zshprompt.zsh

# Various Machines
alias ssh="ssh -A" # explicitly enable authentication forwarding
alias slee="ssh amaus@lee.cs.uno.edu"
alias slee2="ssh amaus@lee2.cs.uno.edu"

# Brewing Machines
alias sferm="ssh -p 2030 amaus@brewingsetup.aaronpmaus.com"

alias vi="vim"
alias junit="java org.junit.runner.JUnitCore"
alias vl="$HOME/.configfiles/setVimLight.zsh"
alias vd="$HOME/.configfiles/setVimDark.zsh"

# when using autocomplete after typing vim, ignore all files with
# extensions class, aux, log, and pdf
zstyle ':completion:*:*:vim:*' file-patterns '^*.(class|JPG|jpg|aux|log|pdf):source-files' '*:all-files'

# keep each terminal session's history separate
unsetopt inc_append_history
unsetopt share_history

# if the localSettings.zsh file exists, then source it
# localSettings is for the settings (path, etc...) that 
# are particular to a certain machine. 
if [[ -a ~/.localSettings.zsh ]]; then
    source ~/.localSettings.zsh
fi
