# pdfbibtex
Simple sh script to run pdflatex &amp; bibtex in one command, so you can have 
your latex file converted to a perfect pdf in one fell swoop.

##Dependencies

Requires `pdflatex` and `bibtex`

##Usage

```
pdfbibtex file.tex
```

##Install

There's no debian package yet. But you can run this simple command to have it available from anywhere:

```
sudo cp pdfbibtex.sh /bin/pdfbibtex
```

##Advanced usage

If you want to have your latex file automatically generate the pdf when edited, so you 
can view in real time in your pdf viewer:

```
sudo apt-get install npm
sudo npm-install -g nodemon

nodemon -x pdfbibtex ./file-watched.tex
```

If you didn't install but just cloned the repository, replace `pdfbibtex` by `path-to-pdfbibtex.sh`.
