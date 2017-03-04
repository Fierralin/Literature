#!/bin/bash

echo Usage: ./addtags.sh tag1 tag2 ...

for tag in $@; do
	tagpath=tags/$tag
	tagindx=tags/$tag/index.html
	if [ ! -d $tagpath ]; then
		mkdir tags/$tag
	fi
	if [ ! -f $tagindx ]; then
		echo --- > $tagindx
		echo layout: spottags >> $tagindx
		echo tag: $tag >> $tagindx
		echo --- >> $tagindx
	fi
done
