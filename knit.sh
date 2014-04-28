./clean.sh

# copy the latest bibliography from Mendeley's export
cp mendeley.bib bibliography.bib
# Make the figure
pandoc -H margins.sty list_of_figures.md -o list_of_figures.pdf
# Make the manuscript
pandoc -H margins.sty --bibliography bibliography.bib --csl plos.csl body_text.md -o body_text.pdf
# Combine the two using PDFtk
pdftk body_text.pdf list_of_figures.pdf cat output combined.pdf
# Remove duplicate files and rename concated one to original name
rm list_of_figures.pdf -f
rm body_text.pdf -f
mv combined.pdf body_text.pdf

# Make TeX files
pandoc -H margins.sty --bibliography bibliography.bib --csl plos.csl body_text.md -o body_text.tex
pandoc -H margins.sty list_of_figures.md -o list_of_figures.tex
