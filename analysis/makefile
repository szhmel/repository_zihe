report: data.txt report.rmd fig1.png
	Rscript -e "rmarkdown::render('report.rmd',quiet=TRUE)"

fig1.png: make_fig1.R data.txt
	chmod +x make_fig1.R && \
	Rscript make_fig1.R

install: install.R
	chmod +x install.R && \
	Rscript install.R

data.txt: cleandata.R Heart\ Failure\ Data.csv
	chmod +x cleandata.R && \
	Rscript cleandata.R

help:
	@echo "report    : Generate final analysis report."
	@echo "fig1.png  : Make a comparable survival curves between smokers"
	@echo "install   : install necessary R packages"
	@echo "data.txt  : Clean Heart Failure Data by removing NAs"


