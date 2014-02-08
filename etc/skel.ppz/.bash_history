#FIRST_PPZ_COMMAND
iptables -t nat -L -v -x --line-numbers
iptables -t raw -L -v -x --line-numbers
iptables -t mangle -L -v -x --line-numbers
iptables -t filter -L -v -x --line-numbers
pstree -Auchnap
#LAST_PPZ_COMMAND
