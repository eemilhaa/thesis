# thesis

## Cli commands

### Build

```console
latexmk -C && latexmk -pdf
```

### Sort bibfile

```console
biber --tool references.bib --output-file=references.bib --configfile=biber.conf 
```


## In-text

### Cite

```tex
\parencite{}
\textcite{}
\citeauthor{}
```
