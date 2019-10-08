# Information about color of text
# %{...%} goes around any characters that do not take up space, such as
# color formatting options!
# %{\e[1;31m%}...%{\e[0m%} makes the ... bold and red. the 1 before the semicolon
# specifies bold. The 31 specifies red foreground
# foreground color codes:
# 30 - black
# 31 - red
# 32 - green
# 33 - yellow
# 34 - blue
# 35 - magenta
# 36 - cyan
# 37 - white
# background color codes are the same as foreground by in the 40s. 41 - red ... 47 - white
# text modifiers
# 0 - normal
# 1 - bold
# 2 - normal again
# 3 - background color
# 4 - underline
# 5 - blinking
# %n specifies username
# %m specifies hostname
# %3~ specifies show the last three directories of the current working directory. substitute $HOME with ~
MONTH=`date +%m`
DAY=`date +%d`
BLUE="%{\e[0;34m%}"
RED="%{\e[1;31m%}"


PROMPT=$'%{\e[0;32m%}[%{\e[0;34m%}%n%{\e[0;37m%}@%{\e[1;31m%}%m%{\e[0;32m%}:%3~]%# %{\e[0m%}' #default prompt
RPROMPT=$'%{\e[0;32m%}[%D{%L:%M:%S %p}; %D{%a,%b %d}]%{\e[0m%}' #prompt for the right side of the screen

#if [[ ($MONTH == "07" && $DAY == "14") ]];
#then
	#RPROMPT=$'%{\e[0;32m%}[%{\e[0;34m%}Joyeux %{\e[0;37m%}Quatorze %{\e[0;31m%}Juillet! %{\e[0;32m%}%D{%a,%b %d}]%{\e[0m%}' #prompt for the right side of the screen
#fi
