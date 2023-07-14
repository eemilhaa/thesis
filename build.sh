biber --tool thesis/references.bib -O thesis/references.bib
cd thesis
latexmk -C && latexmk -pdf
