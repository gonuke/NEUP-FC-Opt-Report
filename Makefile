
SECTIONS=pkgs.tex defs.tex titlepage.tex exec.tex intro.tex market.tex system.tex summary.tex refs.tex

all: final_report.pdf

clean:
	rm -f *.aux *.glo *.ist *.out *.acn *.log *.bbl *.blg

final_report.pdf: final_report.tex ${SECTIONS}
	pdflatex final_report.tex
	bibtex prod.aux
	bibtex ref.aux
	pdflatex final_report.tex
	pdflatex final_report.tex


