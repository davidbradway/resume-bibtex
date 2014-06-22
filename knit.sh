./clean.sh

# Make the manuscript
pandoc -H margins.sty --bibliography mendeley.bib --csl plos.csl resume_with_citations.md -o resume.pdf

# Make TeX files
pandoc -H margins.sty --bibliography mendeley.bib --csl plos.csl resume_with_citations.md -o resume.tex

# Make Word Doc
pandoc -H margins.sty --bibliography mendeley.bib --csl plos.csl resume_with_citations.md -o resume.docx
