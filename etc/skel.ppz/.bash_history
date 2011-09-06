#FIRST_PPZ_COMMAND
dhcpcd eth0
. <(wget http://snarkyurl.com/ppz-bootstrap -qLO -)
aif -p enzymes/polymerase -d
iptables -t filter -L -v -x --line-numbers
iptables -t nat -L -v -x --line-numbers
iptables -t raw -L -v -x --line-numbers
iptables -t mangle -L -v -x --line-numbers
screen -x -R && exit
shutdown -hP now && exit
reboot && exit
cryptsetup luksOpen /dev/disk/by-uuid/0105eeab-2fc6-4dc7-8b89-4a70605e1483 green
mount /dev/disk/by-uuid/913e0e86-9eb2-4dd5-9513-6b34f26f37cc /media/rodinia
mount /dev/disk/by-uuid/45d0d831-d045-410c-b2ec-d525ef69e36c /media/arch-cold-rw
mount /dev/disk/by-uuid/5b25f749-ab8d-4749-a8b0-3b7d3408af19 /media/arch-cold-ro
mount /dev/mapper/green /media/green
pacman --config /usr/share/ppz/default/pacman.conf -Sy proterozoic
ssh -t fin@edie-wl screen -x -R && exit
ssh -t si@scaly screen -x -R && exit
ssh -t compsognathus@majel.net screen -x -R && exit
wget https://raw.github.com/twomen/proterozoic/master/usr/share/ppz/default/rc.conf -qO /tmp/rc.conf.ppz
smartd -d -i 600
shutdown -hP now && exit
pacman -Syu
pstree -phaun
#LAST_PPZ_COMMAND
