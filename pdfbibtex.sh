#!/bin/bash

filename="${1##*/}"
filename="${filename%.*}"
DIR=$(dirname "$1")

mkdir /tmp/pdfbibtex/
pdflatex --output-directory /tmp/pdfbibtex/ $1
cp *.bib /tmp/pdfbibtex/
cd /tmp/pdfbibtex/
bibtex $filename
cd -
pdflatex --output-directory /tmp/pdfbibtex/ $1
pdflatex --output-directory /tmp/pdfbibtex/ $1
cp /tmp/pdfbibtex/$filename.pdf $DIR
