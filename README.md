# pdfbibtex
Simple sh script to run pdflatex &amp; bibtex in one command, so you can have 
your latex file converted to a perfect pdf in one fell swoop.

##Dependencies

Requires `pdflatex` and `bibtex`

##Usage

```
pdfbibtex file.tex
```

##Advanced usage

If you want to have your latex file automatically generate the pdf when edited, so you 
can view in real time in your pdf viewer:

```
sudo apt-get install npm
sudo npm-install -g nodemon

nodemon -x "path-to-pdfbibtex" ./file-watched.tex
```
