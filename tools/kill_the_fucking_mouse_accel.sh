set -x

case "$OSTYPE" in
  darwin*)  OS='mac' ;;
  linux*)   OS='linux' ;;
  *)        OS='default' ;;
esac

if [[ "$OS" == 'mac' ]]; then
  defaults write .GlobalPreferences com.apple.scrollwheel.scaling -1
  defaults write .GlobalPreferences com.apple.mouse.scaling -1
else
  #gets the hardware id's of all mice plugged into the system
  hardwareIds=$(xinput | grep -i logitech | awk '{print substr($(NF-3),4)}')

  #turn off mouse acceleration
  for i in $hardwareIds; do
    xinput set-prop ${i} 'Device Accel Profile' -1
    xinput set-prop ${i} 'Device Accel Velocity Scaling' 1.4
    xinput set-prop ${i} 'Device Accel Constant Deceleration' 1
  done
fi
