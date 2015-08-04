# Make figures
#pandoc -H margins.sty list_of_figures.md -o list_of_figures.pdf
# Make the manuscript
pandoc -H ~/Documents/MyPapers/csl/margins.sty --bibliography  ~/Documents/MyPapers/library.bib --csl ~/Documents/MyPapers/csl/styles/american-medical-association.csl manuscript.md -o manuscript.pdf
# Make Word file
pandoc -H ~/Documents/MyPapers/csl/margins.sty --bibliography  ~/Documents/MyPapers/library.bib --csl ~/Documents/MyPapers/csl/styles/american-medical-association.csl manuscript.md -o manuscript.docx
pandoc -H ~/Documents/MyPapers/csl/margins.sty title.md -o title.docx
# Combine the two using PDFtools (pdftools@skynet.be)
#pdfcat git_manuscript.pdf list_of_figures.pdf > git_ms.pdf
# Remove duplicate files and rename concated one to original name
#rm list_of_figures.pdf
#rm git_manuscript.pdf
mv manuscript.docx output/manuscript.docx
mv title.docx output/title.docx

#pandoc -H margins.sty --bibliography library.bib --csl plos.csl git_manuscript.md -o git_manuscript.tex
#pandoc -H margins.sty list_of_figures.md -o list_of_figures.tex
