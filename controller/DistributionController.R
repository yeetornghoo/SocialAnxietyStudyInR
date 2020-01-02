DistributionController.dnorm <- function(objtable, chartname, xName, yName, foldername, filename){
	
	fn <- paste('output/',foldername,'/dnorm_',filename,'_graph.png', sep = "")
	population_sd <- sd(objtable)
	population_mean <- mean(objtable)  
	population_q1 <- quantile(objtable, 0.25)
	population_q3 <- quantile(objtable, 0.75)
	minv = min(objtable)
	maxv = max(objtable)
	
	x <- seq(minv, 30, by =1)
	y <- dnorm(x, mean = population_mean, sd = population_sd)
	
	png(file = fn, 600, 500)
	plot(x, y, type = 'l', lwd=2, xlab =xName, ylab=yName, main=chartname, yaxt = "n")
	
	# NONE
	abline(v=18, col='grey', lwd=1, lty=2)
	axis(1, at=18,labels=18)
	
	# MILD
	abline(v=24, col='grey', lwd=1, lty=2)
	axis(1, at=24,labels=24)
	
	# MEAN
	abline(v=population_mean, col='blue', lwd=1)
	axis(2, at=population_mean, labels=round(population_mean, digits = 1), las=2, cex.axis=0.7, tck=-.01)
	
	dev.off()
	
}
