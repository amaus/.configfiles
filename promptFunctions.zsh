# this function is used in my oh-my-zsh theme return
# the git project name for cmd prompt display purposes
function git_project_name() {
    local ref
    ref=$(command git rev-parse --quiet --show-toplevel 2> /dev/null)
    local ret=$?
    if [[ $ret != 0 ]]; then
        [[ $ret == 1 ]] && return # no git repo.
        ref=$(command git rev-parse --short HEAD 2> /dev/null) || return
    fi
    echo $(command basename $ref)
}

function is_git_repo(){
    local ref
    ref=$(command git status 2> /dev/null)
    local ret=$?
    if [[ $ret != 0 ]]; then
        echo 0
        return
    fi
    echo 1
}

function has_battery(){
  local acpi=$(which acpi)
  if [[ -n $acpi ]]; then
    echo 1
    return
  fi
  echo 0
}

function battery_percent(){
  local batteryfull=$(acpi | awk '{print $3}')
  if [[ ${batteryfull} == "Full," ]]; then
    local batterynum="100"
  else
    local batterynum=${$(acpi | awk '{print $4}')%??}
  fi
  echo ${batterynum}
  #echo "30"
}

function battery_status_color(){
  # assign color for battery level
  local batteryPercent=$(battery_percent)
  if [[ ${batteryPercent} -le 25 ]]; then
    local batteryColor="%{$fg[red]%}"
  elif [[ ${batteryPercent} -le 50 ]]; then
    batteryColor="%{$fg[yellow]%}"
  elif [[ ${batteryPercent} -gt 50 ]]; then
    local batteryColor="%{$fg[green]%}"
  fi
  echo ${batteryColor}
}
