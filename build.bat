@echo off

setlocal EnableExtensions

set DATADIR=%CD%
set MATHJAX=http://cdn.mathjax.org/mathjax/latest/MathJax.js?config=TeX-AMS_HTML

for /r %%P IN (*.md) DO pandoc "--output=%%~dpP/%%~nP.html" "--mathjax=%MATHJAX%" "--data-dir=%DATADIR%" --template=template.html "--variable=pagetitle:%%~nP | Anthony Zhang" "%%P"
