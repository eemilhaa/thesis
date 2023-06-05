# thesis

### Build

```console
latexmk -C && latexmk -pdf
```

### Sort bibfile

```console
biber --tool references.bib -O references.bib
```


## In-text

### Cite

```tex
\parencite{}
\textcite{}
\citeauthor{}
```
