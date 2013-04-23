#FIRST_PPZ_COMMAND
dhcpcd eth0
. <(wget http://snarkyurl.com/ppz-bootstrap -qLO -)
aif -p enzymes/polymerase -d
iptables -t nat -L -v -x --line-numbers
iptables -t raw -L -v -x --line-numbers
iptables -t mangle -L -v -x --line-numbers
iptables -t filter -L -v -x --line-numbers
exec screen -xUR
cryptsetup luksOpen /dev/disk/by-uuid/0105eeab-2fc6-4dc7-8b89-4a70605e1483 green
mount /dev/disk/by-uuid/913e0e86-9eb2-4dd5-9513-6b34f26f37cc /media/rodinia
mount /dev/disk/by-uuid/45d0d831-d045-410c-b2ec-d525ef69e36c /media/arch-cold-rw
mount /dev/disk/by-uuid/5b25f749-ab8d-4749-a8b0-3b7d3408af19 /media/arch-cold-ro
mount /dev/mapper/green /media/green
pacman --config /usr/share/ppz/default/pacman.conf -Sy proterozoic
wget https://raw.github.com/yardenac/proterozoic/master/usr/share/ppz/default/rc.conf -qO /tmp/rc.conf.ppz
smartd -d -i 600
pacman -Syu
pstree -Auchnap
su - && exit
exec htop
exec su -
blkid | sort
mount -o remount,ro /boot
mount -o remount,rw /boot
gpasswd -a eu optical
gpasswd -a eu audio
exec systemctl --no-block poweroff
exec systemctl --no-block reboot
exec systemctl --no-block suspend
#LAST_PPZ_COMMAND
