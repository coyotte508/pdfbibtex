#!/bin/bash

filename="${1##*/}"
filename="${filename%.*}"
DIR=$(dirname "$1")

pdflatex --output-directory /tmp/ $1
bibtex /tmp/$filename
pdflatex --output-directory /tmp/ $1
pdflatex --output-directory /tmp/ $1
cp /tmp/$filename.pdf $DIR
