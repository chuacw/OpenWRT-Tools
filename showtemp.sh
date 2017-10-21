#!/bin/sh
# chuacw 21 Oct 2017 for Linksys WRT1900AC

  echo
  echo "Shows the current temperature for the CPU, memory and WIFI sensors"
  echo "by chuacw 21 Oct 2017"
  echo

  cpu=`cat /sys/class/hwmon/hwmon2/temp1_input`
  ddr=`cat /sys/class/hwmon/hwmon1/temp1_input`
  wifi=`cat /sys/class/hwmon/hwmon1/temp2_input`
  fan=`cat /sys/devices/platform/pwm_fan/hwmon/hwmon0/pwm1`

# Divide by 1000 to get temp values in C
  cpu=`expr $cpu / 1000`
  ddr=`expr $ddr / 1000`
  wifi=`expr $wifi / 1000`
  echo "CPU: $cpu, DDR: $ddr, WIFI: $wifi, fan: $fan"
  echo

