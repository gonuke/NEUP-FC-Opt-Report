
SECTIONS=pkgs.tex defs.tex titlepage.tex exec.tex intro.tex market.tex system.tex summary.tex

all: final_report.pdf

final_report.pdf: final_report.tex ${SECTIONS}
	pdflatex final_report.tex

