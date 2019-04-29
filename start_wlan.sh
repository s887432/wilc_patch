#!/bin/bash
ifconfig wlan0 up
wpa_supplicant -Dnl80211 -iwlan0 -c/etc/wpa_supplicant.conf &
udhcpc -i wlan0 &

# stop debugging output of the WILC1000 driver
dmesg -n 1