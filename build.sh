#!/bin/sh

DATADIR=.
MATHJAX=http://benweet.github.io/stackedit/lib/MathJax/MathJax.js?config=TeX-AMS_HTML

files="$(find -L "$DATADIR" -type f)"
echo "$files" | while read file; do
	pandoc --output=${file%%.*}.html \
		--mathjax=$MATHJAX \
		--data-dir=$DATADIR \
		--template=template.html \
		--variable=pagetitle:${file%%.*}\ |\ Anthony Zhang \
	$file
done
