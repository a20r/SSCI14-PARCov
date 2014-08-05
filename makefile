all: main

main:	
	pdflatex sis14quads
	bibtex sis14quads
	pdflatex sis14quads
	pdflatex sis14quads
clean:
	rm sis14quads.blg sis14quads.bbl
