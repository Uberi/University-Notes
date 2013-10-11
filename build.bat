@echo off

set DATADIR=%CD%
set MATHJAX=http://benweet.github.io/stackedit/lib/MathJax/MathJax.js?config=TeX-AMS_HTML

pushd MATH135
%APPDATA%\..\Local\Pandoc\pandoc --output=MATH135.html ^
	--mathjax=%MATHJAX% ^
	--data-dir=%DATADIR% ^
	--template=template.html ^
	"--variable=pagetitle:MATH135 | Anthony Zhang" ^
MATH135.md
popd

pushd MATH137
%APPDATA%\..\Local\Pandoc\pandoc --output=MATH137.html ^
	--mathjax=%MATHJAX% ^
	--data-dir=%DATADIR% ^
	--template=template.html ^
	"--variable=pagetitle:MATH137 | Anthony Zhang" ^
MATH137.md
popd

pushd ECON101
%APPDATA%\..\Local\Pandoc\pandoc --output=ECON101.html ^
	--mathjax=%MATHJAX% ^
	--data-dir=%DATADIR% ^
	--template=template.html ^
	"--variable=pagetitle:ECON101 | Anthony Zhang" ^
ECON101.md
popd

pushd PHIL110A
%APPDATA%\..\Local\Pandoc\pandoc --output=PHIL110A.html ^
	--mathjax=%MATHJAX% ^
	--data-dir=%DATADIR% ^
	--template=template.html ^
	"--variable=pagetitle:PHIL110A | Anthony Zhang" ^
PHIL110A.md
popd