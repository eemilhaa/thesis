![workflow](https://github.com/eemilhaa/thesis/actions/workflows/build.yml/badge.svg)

# thesis (WIP)
This is the LaTeX source of my thesis.
Note that everything is very unfinished and things will change constantly.

## Get the latest PDF
A PDF file with the latest changes is always\* available for download.
You can find it in the [releases](https://github.com/eemilhaa/thesis/releases)
(`main.pdf` under `Assets`).
A new version is built and released automatically on every push.
This is done with github actions.

*\*If there are no releases it means a new PDF is being built.
It will be available in ~ 30s.*

## Build the document locally
Below are two approaches for local LaTeX development.
When building locally, the end result will always be `thesis/main.pdf`.

### Containerized
If you have a container engine (podman or docker) installed,
you can skip the headache of figuring out the tex ecosystem.

Just run
```console
<podman/docker>-compose up
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


## General LaTeX stuff

See [this repository](https://github.com/dspinellis/latex-advice)
for excellent advice on wiritig LaTeX.

### In-text citations in APA
```tex
\parencite{}
\textcite{}
\citeauthor{}
```
