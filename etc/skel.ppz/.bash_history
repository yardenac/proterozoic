#FIRST_PPZ_COMMAND
iptables -t nat -L -v -x --line-numbers
iptables -t raw -L -v -x --line-numbers
iptables -t mangle -L -v -x --line-numbers
iptables -t filter -L -v -x --line-numbers
pstree -Auchnap
HISTFILE=/dev/null
mat --check *.jpg
exiftool -overwrite_original -All= *.jpg
#LAST_PPZ_COMMAND
