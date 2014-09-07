#set zsh settings
export ZSH=$HOME/configfiles/.oh-my-zsh
source $ZSH/oh-my-zsh.sh
#export ZSH_THEME="robbyrussell"
source ~/configfiles/zshprompt.zsh

alias slee="ssh amaus@lee.cs.uno.edu"
alias sv1="ssh amaus@vis01.cs.uno.edu"
alias sv2="ssh amaus@vis02.cs.uno.edu"
alias sv3="ssh amaus@vis03.cs.uno.edu"
alias sv4="ssh amaus@vis04.cs.uno.edu"
alias sv5="ssh amaus@vis05.cs.uno.edu"
alias sv6="ssh amaus@vis06.cs.uno.edu"
alias sv7="ssh amaus@vis07.cs.uno.edu"
alias sv8="ssh amaus@vis08.cs.uno.edu"
alias sho="ssh aaaron@98.164.89.8"
alias vin="ssh amaus@vincenzo.cs.uno.edu"
alias grok="ssh -p 31501 aaron@184.177.1.73"
alias junit="java org.junit.runner.JUnitCore"


# if the localSettings.zsh file exists, then source it
# localSettings is for the settings (path, etc...) that 
# are particular to a certain machine. 
if [[ -a ~/.localSettings.zsh ]]; then
    source ~/.localSettings.zsh
fi
