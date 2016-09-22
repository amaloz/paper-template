.PHONY: all clean

DEPENDS=$(shell ls *.tex)

all: main.pdf

fast:
	pdflatex main.tex

main.pdf: main.tex $(DEPENDS)
	rubber -f --pdf --warn all $<

clean:
	rm -rf *.aux *.bbl *.blg *.log main.pdf *.toc *.snm *.out *.nav tags auto
