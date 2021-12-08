#!/bin/sh

cd $(dirname $0)
lualatex --shell-escape ./catbook.tex
biber ./catbook
lualatex --synctex=1 ./catbook.tex

