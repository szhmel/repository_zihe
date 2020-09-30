## Zihe's Project

For this assignment, I will do some simple analysis on my dataset.

To analyze the data you will need to install two `R` packages called "survnimer" and "survival".

The required packages can be installed using following `R` commands.

Also you need to download the dataset contained in the repository.

```{r}
installed_pkgs <- row.names(installed.packages())
pkgs <- c("survminer", "survival")
for(p in pkgs){
	if(!(p %in% installed_pkgs)){
		install.packages(p)
	}
}
```

## Execute the analysis

To execute the analysis, make sure you run from the directory where the dataset locates,

``` bash
Rscript -e "rmarkdown::render('report.Rmd')"
```

This will create a file called `report.html` output in your directory that contains the results.
