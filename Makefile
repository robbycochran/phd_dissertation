DOC=dissertation
FIGURE_DIR = figures/

all: doc pdf ps
doc:
	latex $(DOC).tex
	bibtex $(DOC) || echo "ok"
	latex $(DOC).tex
	latex $(DOC).tex

pdf: ps
	ps2pdf14 -dPDFSETTINGS=/screen -dCompatibilityLevel=1.3 -dMaxSubsetPct=100 -dSubsetFonts=true -dEmbedAllFonts=true -sPAPERSIZE=letter $(DOC).ps
#	ps2pdf14 -dPDFSETTINGS=/printer -dCompatibilityLevel=1.3 -dMaxSubsetPct=100 -dSubsetFonts=true -dEmbedAllFonts=true -sPAPERSIZE=letter $(DOC).ps

ps:  doc
	dvips  -Ppdf -Pcmz -Pamz -t letter -D 600 -G1  $(DOC).dvi -o $(DOC).ps

clean:
	rm -f *.aux *.dvi *.idx *.ind *.log *.toc *.bak *.blg *.bbl *.lot *.lof *.out *.loa
	rm -f *.ps *.pdf
	rm -f paper-hashable paper-view-hashable source-hash

.PHONY: all doc pdf ps
