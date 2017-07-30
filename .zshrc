# set zsh settings
# plugins must be difined before ZSH is initialized
plugins=(history colorized colored-man-pages 
         web-search themes battery git)
source ~/.configfiles/gitFunctions.zsh
#export ZSH_THEME="kennethreitz"
#export ZSH_THEME="bira"
export ZSH_THEME="amaus"
export ZSH=$HOME/.configfiles/.oh-my-zsh
source $ZSH/oh-my-zsh.sh
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
export ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=1' # Red
#source ~/.configfiles/zshprompt.zsh

# Various Machines
alias slee="ssh amaus@lee.cs.uno.edu"
alias slee2="ssh amaus@lee2.cs.uno.edu"
alias svc="ssh amaus@cook.cs.uno.edu"
alias sho="ssh aaaron@98.164.89.8"
alias ugo="ssh amaus@ugo.cs.uno.edu"
alias grok="ssh aaron@home.aaronpmaus.com"
alias ip="ifconfig | grep inet | sed -n '5p' | awk '{ print \$2 }'"

# Brewing Machines
alias sferm="ssh -p 2030 amaus@brewingsetup.aaronpmaus.com"

alias vi="vim"
alias junit="java org.junit.runner.JUnitCore"
alias vl="$HOME/.configfiles/setVimLight.zsh"
alias vd="$HOME/.configfiles/setVimDark.zsh"


# if the localSettings.zsh file exists, then source it
# localSettings is for the settings (path, etc...) that 
# are particular to a certain machine. 
if [[ -a ~/.localSettings.zsh ]]; then
    source ~/.localSettings.zsh
fi
