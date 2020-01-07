disable-mnt
nou2f
nodbus
private-bin chromium,chromedriver
private-cache
private-etc chromium,fonts,group,localtime,asound.conf
private-opt index.html
private-srv index.html

noblacklist ${HOME}/.cache/chromium.tmp
noblacklist ${HOME}/.config/chromium.tmp
whitelist ${HOME}/.cache/chromium.tmp
whitelist ${HOME}/.config/chromium.tmp

include /etc/firejail/chromium.profile
