Correlation.coef <- function(objx, objy){
	
	#fn <- paste('output/',foldername,'/plot_',filename,'.png', sep = "")
	m <- lm(objy~objx)	#Linear Regression Model
	c <- coef(m)

	#cr = cor(objy, objx, method='spearman')
	#cr = round(cr, digits=3)
	
	#kendall, pearson, spearman
	cor.test(objy, objx,  method = c("spearman"), conf.level = 0.95)

}