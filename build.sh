biber --tool references.bib -O references.bib
cd thesis
latexmk -C && latexmk -pdf
