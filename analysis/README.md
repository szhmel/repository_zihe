## Zihe's Project

For this assignment, I will do some simple analysis on my dataset.

To analyze the data you will need to install two `R` packages called "survnimer" and "survival".

In order to successfully generate the report, you should download all files in `repository_zihe`, and make sure you always run from the directory where these files are located.

The process of generating the report has already been organized, so you could install these two package by the following bash code

``` bash
make install
```

## Execute the analysis

``` bash
make report
```

This will create a file called `report.html` output in your directory that contains the results.

Also if you are intrested in see the NAs-removed data called `data.txt`, this will also be created in your directory. And the survival curves will be saved as `fig1.png` in your directory as well.

## Information of the Makefile

By the follwing bash code, you will be able to see the information of each procedure.

``` bash
make help
```
