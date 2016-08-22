assignments = $(wildcard *.md)
pdfs = $(assignments:.md=.pdf)

all : $(pdfs)

$(pdfs) : %.pdf : %.md ../latex-template.tex
	pandoc -t latex --template=../latex-template.tex $< -o $*.tex
	latexmk -f -bibtex- $*
	latexmk -c
	rm -f $*.bbl
