#! /usr/local/bin/Rscript

# read data
df <- read.csv("./Heart Failure Data.csv")

# remove NAs
data <- df[!is.na(df), , drop = FALSE]

# save data
write.table(data, "data.txt", quote = FALSE, row.names = FALSE)