all : syllabus-psci-2221.pdf

syllabus-psci-2221.pdf : syllabus-psci-2221.tex syllabus-body.tex
	latexmk -bibtex- syllabus-psci-2221
	latexmk -c

syllabus-body.tex : syllabus.md
	pandoc syllabus.md -o syllabus-body.tex
	gsed -i'' 's/^\(\\emph{Supplemental\)/\\noindent \1/g' syllabus-body.tex
