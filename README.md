# thesis
This is the LaTeX source of my thesis.

## Requirements
Everything *should* work on most general TeX distributions.

Things you'll need:
- A Tex distribution with LaTeX
- Biber (if not included in your tex distribution)
- Possibly some extra packages to get biblatex working

What you actually have to install depends on how things are packaged.
For example on Arch Linux:
```console
pacman -S \
  biber \
  texlive \
  texlive-bibtexextra
```


## Build
Building means building the thesis document.
The end result will be `thesis/main.pdf`

To do a general, one-command build:
```console
sh build.sh
```
This formats the bibfile (references) and build the pdf.

To only build the pdf:
```console
cd thesis && latexmk -C && latexmk -pdf
```

To only format bibfile:
```console
biber --tool references.bib -O references.bib
```


## In-text stuff

### Cite in APA
```tex
\parencite{}
\textcite{}
\citeauthor{}
```
