.PHONY:report

report: data.txt report.rmd fig1.png
	Rscript -e "rmarkdown::render('report.rmd',output_file = './output/report.html')"

fig1.png: R/make_fig1.R data.txt
	chmod +x R/make_fig1.R && \
	Rscript R/make_fig1.R

install: R/install.R
	chmod +x R/install.R && \
	Rscript R/install.R

data.txt: R/cleandata.R raw_data/Heart\ Failure\ Data.csv
	chmod +x R/cleandata.R && \
	Rscript R/cleandata.R

build: Dockerfile
	docker build -t proj .

help:
	@echo "report    : Generate final analysis report."
	@echo "fig1.png  : Make a comparable survival curves between smokers"
	@echo "install   : install necessary R packages"
	@echo "data.txt  : Clean Heart Failure Data by removing NAs"
	@echo "build     : Build the Docker Image"


