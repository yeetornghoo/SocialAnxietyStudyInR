PlotChart.Regression.Create <- function(objx, objy, chartname, xlabName, ylabName, foldername, filename){
	
	fn <- paste('output/',foldername,'/plot_',filename,'.png', sep = "")
	m <- lm(objy~objx)	#Linear Regression Model
	c <- coef(m, method="spearman")
	
	a <- round(c['(Intercept)'], digits = 3)
	b <- round(c['objx'], digits = 3)
	y <- paste('y = ',b,'x + ',a)
	
	png(file = fn, 600, 500)
	plot(objx, objy, main=chartname, xlab=xlabName, ylab=ylabName)
	abline(c, col="blue")
	text(mean(objx), mean(objy), y, srt=0.5, pos=1, col='red')
	dev.off()

}

PlotChart.Regression.Age <- function(objx, objy, chartname, xlabName, ylabName, foldername, filename){
	
	fn <- paste('output/',foldername,'/plot_',filename,'.png', sep = "")
	m <- lm(objy~objx)	#Linear Regression Model
	c <- coef(m, method="spearman")
	
	a <- round(c['(Intercept)'], digits = 3)
	b <- round(c['objx'], digits = 3)
	y <- paste('y = ',b,'x + ',a)
	
	png(file = fn, 600, 500)
	plot(objx, objy, main=chartname, xlab=xlabName, ylab=ylabName, xaxt = 'n')
	axis(1, at=1:3, labels=c("<=20","21-30","31-40"))
	abline(c, col="blue")
	text(mean(objx), mean(objy), y, srt=0.5, pos=1, col='red')
	dev.off()

}

PlotChart.Regression.Marital <- function(objx, objy, chartname, xlabName, ylabName, foldername, filename){
	
	fn <- paste('output/',foldername,'/plot_',filename,'.png', sep = "")
	m <- lm(objy~objx)	#Linear Regression Model
	c <- coef(m, method="spearman")
	
	a <- round(c['(Intercept)'], digits = 3)
	b <- round(c['objx'], digits = 3)
	y <- paste('y = ',b,'x + ',a)
	
	png(file = fn, 600, 500)
	plot(objx, objy, main=chartname, xlab=xlabName, ylab=ylabName, xaxt = 'n')
	axis(1, at=1:2, labels=c('Married','Single'))
	abline(c, col='blue')
	text(mean(objx), mean(objy), y, srt=0.5, pos=1, col='red')
	dev.off()

}

PlotChart.Regression.Hours <- function(objx, objy, chartname, xlabName, ylabName, foldername, filename){
	
	fn <- paste('output/',foldername,'/plot_',filename,'.png', sep = "")
	m <- lm(objy~objx)	#Linear Regression Model
	c <- coef(m, method="spearman")
	
	a <- round(c['(Intercept)'], digits = 3)
	b <- round(c['objx'], digits = 3)
	y <- paste('y = ',b,'x + ',a)
	
	png(file = fn, 600, 500)
	plot(objx, objy, main=chartname, xlab=xlabName, ylab=ylabName, xaxt = 'n')
	axis(1, at=1:5, labels=c('<=1','<=2','<=3','<=4','>=5'))
	abline(c, col='blue')
	text(mean(objx), mean(objy), y, srt=0.5, pos=1, col='red')
	dev.off()

}