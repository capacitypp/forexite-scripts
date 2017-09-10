#!/bin/bash
rm -r -f zips
mkdir zips
for i in $(ls htmls); do
	for string in $(cat "htmls/"$i | grep zip); do
		string=${string#*\"}
		string=${string%%\"*}
		if [[ "$string" =~ .*\.zip ]]; then
			url="https://www.forexite.com/free_forex_quotes/"$string
			wget $url
		fi
	done
done
mv *.zip zips

