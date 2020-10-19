installed_pkgs <- row.names(installed.packages())
pkgs <- c("survminer", "survival")
for(p in pkgs){
	if(!(p %in% installed_pkgs)){
		install.packages(p)
	}
}