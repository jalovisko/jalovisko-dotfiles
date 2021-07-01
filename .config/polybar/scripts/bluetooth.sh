#!/bin/sh
if [ $(bluetoothctl show | grep "Powered: yes" | wc -c) -eq 0 ]
then
  echo "%{F#66ffffff} %{F#f3f4f5}Off"
else
  if [ $(echo info | bluetoothctl | grep 'Device' | wc -c) -eq 0 ]
  then 
    echo " %{F#f3f4f5}Disconected"
  fi
  echo "%{F#2193ff} %{F#f3f4f5}Connected"
fi
