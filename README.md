## Zihe's Project

For this assignment, I will do some simple analysis on my dataset.

To analyze the data you will need to install two `R` packages called "survnimer" and "survival".

In order to successfully generate the report, you should download all files in `repository_zihe`, and make sure you always run from the directory. The file structure were included in `File Sturcture.txt`

The process of generating the report has already been organized, so you could install these two package by the following bash code

``` bash
make install
```

## Execute the analysis

#1

``` bash
make report
```

This will create a file called `report.html` output in your directory that contains the results.

Also if you are intrested in see the NAs-removed data called `data.txt`, this will also be created in your directory. And the survival curves will be saved as `fig1.png` in your directory as well.

#2

If you want to try to build a docker container to execute the analysis, you could use following command

```bash
make build
```
After building this, if you only want to extract the result to your local computer, you could run the following command to mount the repository `output`, which only contained `report.html` itselves.

```bash
docker run -v your_repository_to_put_report:/project/output -it proj
```

Or you also could choose to mount all files to your computer,

``` bash
docker run -v your_repository_to_put_everything:/project -it proj
```

#3

Also you could get the `report.html` from an built Docker image in Dockerhub, where by following code, you could pull my image to your local computer:
``` bash
docker pull szhmel/repo_zihe
```

Then create a repository where you want to put `report.html`
``` bash

docker run -v your_repository_to_put_report:/project/output -it szhmel/repo_zihe
```

## Help of Makefile

By the follwing bash code, you will be able to see the information of each procedure.

``` bash
make help
```




