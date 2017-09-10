#!/bin/bash
rm -r -f usdjpy
mkdir usdjpy
for i in $(ls txts); do
	cat "txts/"$i | grep USDJPY > "usdjpy/"$i
done

