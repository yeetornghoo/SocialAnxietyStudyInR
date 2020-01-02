source("controller/PlotController.R")

Correlation.Student.Run <- function(df){
	
	obj <- df

	x <- as.numeric(obj$max_hours)	# X INDEPENDEND
	y <- obj$ttl_point				# Y DEPENDEND
	
	m <- lm(y~x)	#Linear Regression Model
	c <- coef(lm(y~x))

	fn <- paste('output/plot_max_student.png')
	png(file = fn, 600, 500)
	plot(x, y, main='Student', xlab='Hours on Social Media', ylab='Points')
	abline(c, col="blue")
	
	cr = cor(y, x, method='spearman')
	cr = round(cr, digits=3)
	
	dev.off()

}

Correlation.NoneStudent.Run <- function(df){
	
	obj <- df

	x <- as.numeric(obj$max_hours)	# X INDEPENDEND
	y <- obj$ttl_point				# Y DEPENDEND
	
	m <- lm(y~x)	#Linear Regression Model
	c <- coef(lm(y~x))

	fn <- paste('output/plot_max_nonestudent.png')
	png(file = fn, 600, 500)
	plot(x, y, main='None Student', xlab='Hours on Social Media', ylab='Points')
	abline(c, col="blue")
	
	cr = cor(y, x, method='spearman')
	cr = round(cr, digits=3)
	
	dev.off()

}

Correlation.All.Run <- function(df){
	
	obj <- df

	x <- as.numeric(obj$max_hours)	# X INDEPENDEND
	y <- obj$ttl_point				# Y DEPENDEND
	
	m <- lm(y~x)	#Linear Regression Model
	c <- coef(lm(y~x))

	fn <- paste('output/plot_max_all.png')
	png(file = fn, 600, 500)
	plot(x, y, main='All', xlab='Hours on Social Media', ylab='Points')
	abline(c, col="blue")
	
	cr = cor(y, x, method='spearman')
	cr = round(cr, digits=3)
	
	dev.off()

}