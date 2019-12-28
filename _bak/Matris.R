##########################################
# CREATE MATRIX BY ROW
# CREATED BY: HOO
# CREATED DATE: 3 Dec 2019
##########################################

sampledata=1:10

# FILLE BY ROW
sampleMatricData=matrix(sampledata,nrow=5,ncol=2, byrow=T)
colnames(sampleMatricData) <- c("Col1", "Col2")

sampleMatricData
