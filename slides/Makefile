slide_pdfs = $(wildcard *.pdf)
slide_thumbs = $(slide_pdfs:.pdf=.png)

all : $(slide_thumbs)

$(slide_thumbs) : %.png : %.pdf
	convert $<[0] $@
