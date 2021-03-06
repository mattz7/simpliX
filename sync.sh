#!/bin/sh
if [ ! -t 0 ]; then
	x-terminal-emulator -e "$0"
	exit 0
fi
basedir=`dirname "$(readlink -f "${0}")"`
git add .
read -p "DESC :" MESSAGE
git commit -m "$MESSAGE"
git push origin master
echo "done"
sleep 5
exit
