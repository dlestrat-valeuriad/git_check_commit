
if [ $# -ne 2 ]; then
	echo "usage $0 tag1  tag2"
	exit 1
fi


git log --oneline $1..$2 | grep "\[CNAM" | cut -d' ' -f2 | sed 's/\(.*\)].*/\1]/' | sort -u

