#!/bin/bash
rm -r -f txts
mkdir txts
for i in $(ls zips); do
	path="zips/"$i
	unzip $path
done
mv *.txt txts

