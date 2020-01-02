BarController.Create <- function(objtable, chartname, xName, yName, foldername, filename){
	fn <- paste('output/',foldername,'/bar_',filename,'_diagram.png',sep = "")
	png(file =fn, 600, 500)
	barplot(objtable, main=chartname, xlab=xName, ylab=yName, density=c(0,5,10,15,20))
	dev.off()
}