#!/bin/bash

filename="${1##*/}"
filename="${filename%.*}"
pdflatex $1
bibtex $filename
pdflatex $1
pdflatex $1
