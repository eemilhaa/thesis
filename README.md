![workflow](https://github.com/eemilhaa/thesis/actions/workflows/build.yml/badge.svg)

# thesis (WIP)
This is the LaTeX source of my thesis.

## Get the latest PDF
A PDF file with the latest changes is always available for download -
find it in the build artifacts on the Actions tab.
A new version is built and uploaded automatically on every push.

## Build the document locally
More frequent builds are necessary to preview changes when writing.
Below are two approaches for local LaTeX development.

When building locally, the end result will always be `thesis/main.pdf`.

### Containerized
If you have a container engine (podman / docker) installed,
you can skip the headache of figuring out the tex ecosystem.

Just run
```console
podman-compose up
```
to build a pdf.

### With native packages
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

To do a general, one-command build:
```console
sh build.sh
```
This formats the bibfile and builds the pdf.

To only build the pdf:
```console
cd thesis && latexmk -C && latexmk -pdf
```

To only format the bibfile:
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
