set -x

#gets the hardware id's of all mice plugged into the system
hardwareIds=$(xinput | grep -i logitech | awk '{print substr($(NF-3),4)}')

#turn off mouse acceleration
for i in $hardwareIds; do
  xinput set-prop ${i} 'Device Accel Profile' -1
  xinput set-prop ${i} 'Device Accel Velocity Scaling' 1
  xinput set-prop ${i} 'Device Accel Constant Deceleration' 1
done
