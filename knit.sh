./clean.sh

# Make a list of figures that can be appended
#pandoc -H margins.sty list_of_figures.md -o list_of_figures.pdf
# Make the manuscript
pandoc -H margins.sty --bibliography mendeley.bib --csl plos.csl resume_with_citations.md -o resume.pdf
# Combine the two using PDFtk
#pdftk resume.pdf list_of_figures.pdf cat output combined.pdf
# Remove duplicate files and rename concated one to original name
#rm list_of_figures.pdf -f
#rm resume.pdf -f
#mv combined.pdf resume.pdf

# Make TeX files
pandoc -H margins.sty --bibliography mendeley.bib --csl plos.csl resume_with_citations.md -o resume.tex
#pandoc -H margins.sty list_of_figures.md -o list_of_figures.tex
