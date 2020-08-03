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
