#!/bin/bash
rm -r -f htmls
mkdir htmls
wget https://www.forexite.com/free_forex_quotes/forex_history_arhiv.html
for i in $(cat forex_history_arhiv.html | grep arhiv); do
	string=${i#*\"}
	string=${string%%\"*}
	if [[ "$string" =~ .*\.html ]]; then
		url="https://www.forexite.com/free_forex_quotes/"$string
		wget $url
	fi
done
mv *.html htmls/

