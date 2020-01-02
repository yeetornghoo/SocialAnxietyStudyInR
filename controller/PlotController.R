PlotChart.Create <- function(objx, objy, chartname, xlabName, ylabName, filename){
	
	fn <- paste('output/plot_',filename,'.png')

	x <- objx		#X INDEPENDEND
	y <- objy		#Y DEPENDEND
	m <- lm(y~x)	#Linear Regression Model
	c <- coef(lm(y~x))
	png(file = fn, 600, 500)
	plot(x, y, main=chartname, xlab=xlabName, ylab=ylabName)
	abline(c, col="blue")
	dev.off()

}