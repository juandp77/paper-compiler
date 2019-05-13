
###################################
# Compile docs by juandp77 #
###################################

# Make figures
#pandoc -H margins.sty list_of_figures.md -o list_of_figures.pdf
# Make the manuscript
pandoc -H ~/Documentos/GitHub/paper-compiler/csl/margins.sty --bibliography  ~/Documentos/Mendeley\ Desktop/library.bib --csl ~/Documentos/GitHub/paper-compiler/csl/styles/journal-of-neurosurgery.csl manuscript.md -o manuscript.pdf
# Make Word file
pandoc -H ~/Documentos/GitHub/paper-compiler/csl/margins.sty --bibliography  ~/Documentos/Mendeley\ Desktop/library.bib --csl ~/Documentos/GitHub/paper-compiler/csl/styles/journal-of-neurosurgery.csl manuscript.md -o manuscript.docx
#pandoc -H ~/Documents/MyPapers/csl/margins.sty title.md -o title.docx
# Combine the two using PDFtools (pdftools@skynet.be)
#pdfcat git_manuscript.pdf list_of_figures.pdf > git_ms.pdf
# Remove duplicate files and rename concated one to original name
#rm list_of_figures.pdf
#rm git_manuscript.pdf
mv manuscript.docx output/manuscript.docx
#mv title.docx output/title.docx
mv manuscript.pdf output/manuscript.pdf

#pandoc -H margins.sty --bibliography library.bib --csl plos.csl git_manuscript.md -o git_manuscript.tex
#pandoc -H margins.sty list_of_figures.md -o list_of_figures.tex
