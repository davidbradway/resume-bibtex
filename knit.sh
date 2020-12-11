./clean.sh
# Make PDF
pandoc -H margins.sty --bibliography mendeley.bib --csl plos.csl resume_with_citations.md -o resume.pdf
# Make TeX
pandoc -H margins.sty --bibliography mendeley.bib --csl plos.csl resume_with_citations.md -o resume.tex
# Make Word Doc
pandoc -H margins.sty --bibliography mendeley.bib --csl plos.csl resume_with_citations.md -o resume.docx
# Make HTML page
pandoc -s --bibliography mendeley.bib --csl plos.csl resume_with_citations.md -o resume.html
# Make ReST file
pandoc -s -t rst --bibliography mendeley.bib --csl plos.csl resume_with_citations.md -o resume.rst
./clean.sh

