disable-mnt
nou2f
private-bin chromium,chromedriver
private-cache
private-etc chromium,fonts,group,localtime,asound.conf
private-opt index.html
private-srv index.html

#ignore private-dev
#whitelist /dev/disc
#whitelist /dev/dri
#whitelist /dev/full
#whitelist /dev/hidraw*
#whitelist /dev/log
#whitelist /dev/null
#whitelist /dev/ptmx
#whitelist /dev/pts
#whitelist /dev/random
#whitelist /dev/shm
#whitelist /dev/snd
#whitelist /dev/tty
#whitelist /dev/urandom
#whitelist /dev/usb
#whitelist /dev/video
#whitelist /dev/zero

include /etc/firejail/chromium.profile
