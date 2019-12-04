
#CHANGE DIRECTORY
setwd("C:/Users/carlson/Github_workspace/RSudio")

# TEST SOURCE (txt)
inputfile <- "dataset/userdata.txt"
file=read.table(inputfile, header=T)
file

# TEST SOURCE (csv)
inputfile2 <- "dataset/userdata.csv"
file2=read.table(inputfile, header=T)
file2