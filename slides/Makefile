slide_pdfs = $(wildcard *.pdf)
slide_tiffs = $(slide_pdfs:.pdf=.tiff)

all : $(slide_tiffs)

$(slide_tiffs) : %.tiff : %.pdf
	convert $<[0] $@
