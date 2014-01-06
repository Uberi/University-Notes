@echo off

set DATADIR=%CD%
set MATHJAX=http://cdn.mathjax.org/mathjax/latest/MathJax.js?config=TeX-AMS_HTML

pushd MATH136
%APPDATA%\..\Local\Pandoc\pandoc --output=MATH136.html ^
	--mathjax=%MATHJAX% ^
	--data-dir=%DATADIR% ^
	--template=template.html ^
	"--variable=pagetitle:MATH136 | Anthony Zhang" ^
MATH136.md
popd

pushd MATH138
%APPDATA%\..\Local\Pandoc\pandoc --output=MATH138.html ^
	--mathjax=%MATHJAX% ^
	--data-dir=%DATADIR% ^
	--template=template.html ^
	"--variable=pagetitle:MATH138 | Anthony Zhang" ^
MATH138.md
popd

pushd PHYS121
%APPDATA%\..\Local\Pandoc\pandoc --output=PHYS121.html ^
	--mathjax=%MATHJAX% ^
	--data-dir=%DATADIR% ^
	--template=template.html ^
	"--variable=pagetitle:PHYS121 | Anthony Zhang" ^
PHYS121.md
popd

pushd PHIL145
%APPDATA%\..\Local\Pandoc\pandoc --output=PHIL145.html ^
	--mathjax=%MATHJAX% ^
	--data-dir=%DATADIR% ^
	--template=template.html ^
	"--variable=pagetitle:PHIL145 | Anthony Zhang" ^
PHIL145.md
popd

pushd CS136
%APPDATA%\..\Local\Pandoc\pandoc --output=CS136.html ^
	--mathjax=%MATHJAX% ^
	--data-dir=%DATADIR% ^
	--template=template.html ^
	"--variable=pagetitle:CS136 | Anthony Zhang" ^
CS136.md
popd
