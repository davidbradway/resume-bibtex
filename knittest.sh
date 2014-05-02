# Make the manuscript
pandoc -H margins.sty --bibliography test.bib --csl plos.csl test.md -o test.pdf

# Make TeX files
pandoc -H margins.sty --bibliography test.bib --csl plos.csl test.md -o test.tex
