list_file=$(dirname $(realpath $0))/"software_list.txt"
apt install -y `cat $list_file`

# nim
{
	curl https://nim-lang.org/choosenim/init.sh -sSf | sh && \
	choosenim stable
} || {
	echo -e "======\n failed to install choosenim, install nim from apt instead"
	apt install -y nim
}

