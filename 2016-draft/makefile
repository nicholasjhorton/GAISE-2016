all: GAISE-report-tufte.pdf

GAISE-report-tufte.pdf: 01-executive.tex 02-introduction.tex 03-goals.tex 04-recommendations.tex 05-closing.tex GAISE-report-tufte.tex appendix-activities.tex appendix-assessment.tex appendix-data.tex appendix-technology.tex appendix-multivariate.tex
	pdflatex GAISE-report-tufte 
	bibtex GAISE-report-tufte
	pdflatex GAISE-report-tufte

clean: 
	rm *.idx *.ilg *.ind

appendix-multivariate.tex: appendix-multivariate.Rnw  
	Rscript -e "library(knitr); knit('appendix-multivariate.Rnw')"

