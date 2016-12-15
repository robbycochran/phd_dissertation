dissertation
============

Robby Cochran's PhD Dissertation - UNC at Chapel Hill

- Template is based on http://www.cs.unc.edu/~bbb/diss/unc-dissertation-template.zip but changes were made
to formatting to meet latest UNC requirements in 2016.

- Use Makefile for latex -> dvi -> pdf

- Latex doesn't play well with eps files generated from R (Helvetica not embedded).
  - Can fix with pdflatex dissertation.tex && bibtex dissertation && pdflatex dissertation.tex && pdflatex dissertation.tex

