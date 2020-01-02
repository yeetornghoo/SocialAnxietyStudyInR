source("controller/PlotController.R")

Regression.Run <- function(df){

	obj <- df
	
	# AGE
	x <- as.numeric(obj$age)	# X INDEPENDEND
	y <- obj$ttl_point			# Y DEPENDEND
	PlotChart.Create(x, y, 'Age v.s. Social Axienty Points', 'Age', 'Social Axienty Points', 'age')
	
	# MAX HOUR
	x <- as.numeric(obj$max_hours)	# X INDEPENDEND
	y <- obj$ttl_point			# Y DEPENDEND
	PlotChart.Create(x, y, 'Max Hours v.s. Social Axienty Points', 'Hours', 'Social Axienty Points', 'hours')	

}