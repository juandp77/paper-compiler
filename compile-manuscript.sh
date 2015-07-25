# Make figures
#pandoc -H margins.sty list_of_figures.md -o list_of_figures.pdf
# Make the manuscript
pandoc -H margins.sty --bibliography library.bib --csl american-medical-association.csl manuscript.md -o manuscript.pdf
# Make Word file
pandoc -H margins.sty --bibliography library.bib --csl american-medical-association.csl manuscript.md -o manuscript.docx
# Combine the two using PDFtools (pdftools@skynet.be)
#pdfcat git_manuscript.pdf list_of_figures.pdf > git_ms.pdf
# Remove duplicate files and rename concated one to original name
#rm list_of_figures.pdf
#rm git_manuscript.pdf
#mv git_ms.pdf git_manuscript.pdf

#pandoc -H margins.sty --bibliography library.bib --csl plos.csl git_manuscript.md -o git_manuscript.tex
#pandoc -H margins.sty list_of_figures.md -o list_of_figures.tex
