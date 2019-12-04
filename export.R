
#CHANGE DIRECTORY
setwd("C:/Users/carlson/Github_workspace/RSudio/")

outputfile <- "dataset/testdata.txt"

mydata=trees
write.table(mydata, outputfile, sep="\t")
