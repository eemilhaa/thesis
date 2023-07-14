![workflow](https://github.com/eemilhaa/thesis/actions/workflows/build.yml/badge.svg)

# thesis (WIP)
This is the LaTeX source of my thesis.
A pdf file is built and uploaded automatically with a github action on every push affecting any relevant files.
You can find the pdf in the build artifacts on the Actions tab.

## Requirements for running locally

### Packages
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

### Building
When building locally, the end result will be `thesis/main.pdf`.

To do a general, one-command build:
```console
sh build.sh
```
This formats the bibfile and builds the pdf.

To only build the pdf:
```console
cd thesis && latexmk -C && latexmk -pdf
```

To only format bibfile:
```console
biber --tool thesis/references.bib -O thesis/references.bib
```


## In-text stuff

### Cite in APA
```tex
\parencite{}
\textcite{}
\citeauthor{}
```
