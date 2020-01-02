PieChart.Create <- function(objtable, chartname, foldername, filename){
	fn <- paste('output/',foldername,'/pie_',filename,'_diagram.png', sep = "")
	lbls <- paste(names(objtable), '\n', objtable, sep='')
	pct <- round(objtable/sum(objtable)*100)
	lbls <- paste(lbls, '(', pct, '%)')
	lbls <- paste(lbls, sep='')
	png(file = fn, 600, 500)
	pie(objtable, labels = lbls, main=chartname, density=c(0,5,10,15,20))
	dev.off()
}