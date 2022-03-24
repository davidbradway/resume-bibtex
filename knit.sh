./clean.sh
# Make PDF
pandoc -s -H margins.sty --bibliography mendeley.bib --csl plos.csl --metadata title="David Pierson Bradway, Ph.D." --citeproc resume_with_citations.md -o resume.pdf
# Make TeX
pandoc -s -H margins.sty --bibliography mendeley.bib --csl plos.csl --metadata title="David Pierson Bradway, Ph.D." --citeproc resume_with_citations.md -o resume.tex
# Make Word Doc
pandoc -s -H margins.sty --bibliography mendeley.bib --csl plos.csl --metadata title="David Pierson Bradway, Ph.D." --citeproc resume_with_citations.md -o resume.docx
# Make HTML page
pandoc -s --bibliography mendeley.bib --csl plos.csl --metadata title="David Pierson Bradway, Ph.D." --citeproc resume_with_citations.md -o resume.html
# Make ReST file
pandoc -s -t rst --bibliography mendeley.bib --csl plos.csl --metadata title="David Pierson Bradway, Ph.D." --citeproc resume_with_citations.md -o resume.rst
./clean.sh
