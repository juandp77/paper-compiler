###################################
# Create needed files by juandp77 #
###################################

# create new markdown document
touch manuscript.md 
# copy the latest bibliography from Mendeley's export
cp ~/Documents/MyPapers/library.bib .
# copy the citation style
cp ~/Documents/MyPapers/csl/styles/american-medical-association.csl .
# copy the margin style
cp ~/Documents/MyPapers/csl/margins.sty .
# copy compile-manuscript script
cp ~/Documents/Scripts/paper-compiler/compile-manuscript.sh .
# create a figure folder
mkdir figures
