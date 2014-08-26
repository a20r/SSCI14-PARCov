all: tase

sis:
	pdflatex sis14quads
	bibtex sis14quads
	pdflatex sis14quads
	pdflatex sis14quads

tase:
	pdflatex tase14quads
	bibtex tase14quads
	pdflatex tase14quads
	pdflatex tase14quads


clean:
	rm sis14quads.blg sis14quads.bbl
