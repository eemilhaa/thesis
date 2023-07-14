# thesis

## Build

### General one-command build
```console
sh build.sh
```

### Only build pdf
```console
cd thesis && latexmk -C && latexmk -pdf
```

### Only format bibfile
```console
biber --tool references.bib -O references.bib
```


## In-text

### Cite in APA
```tex
\parencite{}
\textcite{}
\citeauthor{}
```
