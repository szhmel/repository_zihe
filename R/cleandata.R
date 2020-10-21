#! /usr/local/bin/Rscript

# read data
df <- read.csv("./raw_data/Heart Failure Data.csv")

# remove NAs
data <- na.omit(df)

# save data
write.table(data, "data.txt", quote = FALSE, row.names = FALSE)