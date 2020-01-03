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
	text(maxv, 0.16, paste('Max:',maxv), pos=4, col='grey')
	
	#MIN
	abline(v=minv, col='grey', lwd=1, lty=2)
	axis(1, at=minv,labels=minv)
	text(minv, 0.16, paste('Min:',minv), pos=2, col='grey')
	
	#MEDIAN
	abline(v=mdmv, col='grey', lwd=1, lty=2)
	axis(1, at=mdmv,labels=mdmv)
	text(mdmv, 0.16, paste('Median:',mdmv), pos=1, col='grey')
	
	# MEAN
	abline(v=population_mean, col='blue', lwd=1, lty=1)
	axis(2, at=population_mean, labels=round(population_mean, digits = 1), las=2, cex.axis=0.7, tck=-.01)
	text(population_mean, 0.09, paste('Mean:',population_mean), pos=1, col='blue')
	
	# MILD
	abline(v=18, col='orange', lwd=1, lty=1)
	axis(1, at=18,labels=18)
	text(18, 0.08, paste('Mild:',18), pos=4, col='orange')
	
	# HIGH
	abline(v=24, col='orange', lwd=1, lty=1)
	axis(1, at=24,labels=24)
	text(24, 0.08, paste('High:',24), pos=4, col='orange')
	
	dev.off()
	
}
