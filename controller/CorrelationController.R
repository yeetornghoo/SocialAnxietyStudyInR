Correlation.coef <- function(objx, objy){
	
	#fn <- paste('output/',foldername,'/plot_',filename,'.png', sep = "")
	m <- lm(objy~objx)	#Linear Regression Model
	c <- coef(m)

	#cr = cor(objy, objx, method='spearman')
	#cr = round(cr, digits=3)

	#kendall, pearson, spearman
	#cor.test(objy, objx,  method = c("spearman"), conf.level = 0.95)
	chisq.test(objy, objx)

}

	#fn <- paste('output/plot_max_all.png')
	#png(file = fn, 600, 500)
	#plot(x, y, main='All', xlab='Hours on Social Media', ylab='Points')
	#abline(c, col="blue")
	
	#cr = cor(y, x, method='spearman')
	#cor.test(y, x,  method = c("spearman"), conf.level = 0.9)
	#cr = round(cr, digits=3)
	
	#chisq.test(y, x)
	
	#dev.off()