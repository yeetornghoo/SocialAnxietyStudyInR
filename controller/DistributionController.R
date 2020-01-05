DistributionController.dnorm <- function(objtable, chartname, xName, yName, foldername, filename){
	
	fn <- paste('output/',foldername,'/dnorm_',filename,'_graph.png', sep = "")
	population_sd <- round(sd(objtable), digits = 3)
	population_mean <- round(mean(objtable), digits = 3)
	population_q1 <- quantile(objtable, 0.25)
	population_q3 <- quantile(objtable, 0.75)
	minv = min(objtable)
	maxv = max(objtable)
	mdmv = median(objtable)
	
	x <- seq(6, 30, by =1)
	y <- dnorm(x, mean = population_mean, sd = population_sd)
	
	png(file = fn, 600, 500)
	plot(x, y, type = 'l', lwd=2, xlab =xName, ylab=yName, main=chartname, yaxt = "n")

	#MAX
	abline(v=maxv, col='grey', lwd=1, lty=2)
	axis(1, at=maxv,labels=maxv)
	text(maxv, 0.2, paste('Max:',maxv), pos=4, col='grey')
	
	#MIN
	abline(v=minv, col='grey', lwd=1, lty=2)
	axis(1, at=minv,labels=minv)
	text(minv, 0.2, paste('Min:',minv), pos=4, col='grey')
	
	#MEDIAN
	abline(v=mdmv, col='grey', lwd=1, lty=2)
	axis(1, at=mdmv,labels=mdmv)
	text(mdmv, 0.2, paste('Median:',mdmv), pos=4, col='grey')
	
	# MEAN
	abline(v=population_mean, col='blue', lwd=1, lty=1)
	axis(2, at=population_mean, labels=round(population_mean, digits = 1), las=2, cex.axis=0.7, tck=-.01)
	text(population_mean, 0.04, paste('Mean:',population_mean), pos=1, col='blue')
	
	# MILD
	abline(v=19, col='orange', lwd=1, lty=1)
	axis(1, at=19,labels=19)
	text(19, 0.02, paste('Mild:',19), pos=4, col='orange')
	
	# HIGH
	abline(v=25, col='orange', lwd=1, lty=1)
	axis(1, at=25,labels=25)
	text(25, 0.02, paste('High:',25), pos=4, col='orange')
	
	dev.off()
	
}
