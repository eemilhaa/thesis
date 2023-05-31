# thesis

## Cli commands

### Build

```console
latexmk -C && latexmk -pdf
```


### Sort bibfile

```console
biber --tool references.bib --output-file=sorted.bib --configfile=biber.conf 
```


## Cite
```tex
\parencite{}
\citeauthor{}
\textcite{}
```
