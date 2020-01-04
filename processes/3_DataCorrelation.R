source("controller/PlotController.R")
source("controller/CorrelationController.R")

Correlation.Run <- function(df, foldername){
	
	obj <- df

	y <- obj$ttl_point	# Y DEPENDEND

	# X INDEPENDENT = MAX HOURS
	x <- as.numeric(obj$max_hours)
	PlotChart.Regression.Hours(x, y, 'Maximum Hours On Social Media per Day', 'hours', 'Social Anxiety Scale', foldername, 'maxhour')
	Correlation.coef(x, y)
	
	# X INDEPENDENT = AGE
	x <- as.numeric(obj$age)
	PlotChart.Regression.Age(x, y, 'Age', 'age', 'Social Anxiety Scale',foldername, 'age')
	Correlation.coef(x, y)
	
}