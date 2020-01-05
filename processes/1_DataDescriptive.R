source("controller/PieController.R")
source("controller/BarController.R")
source("controller/DistributionController.R")
source("controller/PlotController.R")

Descriptive.Run <- function(df, foldername){

	obj <- df
	population_sd <- round(sd(obj$ttl_point), digits = 3)
	population_mean <- round(mean(obj$ttl_point), digits = 3)
	
	mild_point = 19
	high_point = 25
	
	# GENDER
	objtable <- table(obj$gender)
	PieChart.Create(objtable, 'Gender', foldername, 'gender')
	
	# MARITAL
	objtable <- table(obj$marital)
	PieChart.Create(objtable, 'Marital', foldername, 'marital')
	
	# STUDENT AND NONE STUDENT
	objtable <- table(obj$student)
	PieChart.Create(objtable, 'Student', foldername, 'occupation')

	# TOTAL POINT
	BarController.Create(table(obj$ttl_point), 'Social Anxiety Scale', 'Total Point', '# Survey', foldername, 'ttl_point')
	
	# AGE
	BarController.Create(table(obj$age), 'Age', 'Age Range', '# Survey', foldername, 'age')
	
	# NORMAL DISTRIBUTION
	DistributionController.dnorm(obj$ttl_point, "Distribution", 'Social Axienty Scale', '', foldername, 'ttl_point')


	xLabelName = paste('Total Soxial Anxiety Scale (', foldername, ')')

	# BOX PLOT - GENDER
	femaleBox <- obj[obj$gender=='Female',]
	maleBox <- obj[obj$gender=='Male',]
	fn <- paste('output/',foldername,'/boxplot_gender.png', sep = "")
	png(fn, 600, 500)
	boxplot(obj$ttl_point, femaleBox$ttl_point, maleBox$ttl_point, names=c('Overall', 'Female', 'Male'), ylab='Gender', horizontal = TRUE, xlab=xLabelName, col=c('yellow', 'White', 'White'))
	abline(v=population_mean, col='blue', lwd=1, lty=2)
	abline(v=mild_point, col='orange', lwd=1, lty=2)
	abline(v=high_point, col='orange', lwd=1, lty=2)
	axis(1, at=population_mean,labels=population_mean)
	axis(1, at=mild_point,labels=mild_point)
	axis(1, at=high_point,labels=high_point)


	# BOX PLOT - MARITAL
	singleBox <- obj[obj$marital=='Single',]
	marriedBox <- obj[obj$marital=='Married',]
	fn <- paste('output/',foldername,'/boxplot_marital.png', sep = "")
	png(fn, 600, 500)
	boxplot(obj$ttl_point, singleBox$ttl_point, marriedBox$ttl_point, names=c('Overall', 'Single', 'Married'), ylab='Marital Status', horizontal = TRUE, xlab=xLabelName, col=c('yellow', 'White', 'White'))
	abline(v=population_mean, col='blue', lwd=1, lty=2)
	abline(v=mild_point, col='orange', lwd=1, lty=2)
	abline(v=high_point, col='orange', lwd=1, lty=2)
	axis(1, at=population_mean,labels=population_mean)
	axis(1, at=mild_point,labels=mild_point)
	axis(1, at=high_point,labels=high_point)
	
	# BOX PLOT - STUDENT
	studentBox <- obj[obj$student=='Yes',]
	notStudentBox <- obj[obj$student=='No',]
	fn <- paste('output/',foldername,'/boxplot_occupation.png', sep = "")
	png(fn, 600, 500)
	boxplot(obj$ttl_point, studentBox$ttl_point, notStudentBox$ttl_point, names=c('Overall', 'Student', 'None Student'), ylab='Student', horizontal = TRUE, xlab=xLabelName, col=c('yellow', 'White', 'White'))
	abline(v=population_mean, col='blue', lwd=1, lty=2)
	abline(v=mild_point, col='orange', lwd=1, lty=2)
	abline(v=high_point, col='orange', lwd=1, lty=2)
	axis(1, at=population_mean,labels=population_mean)
	axis(1, at=mild_point,labels=mild_point)
	axis(1, at=high_point,labels=high_point)
	
	# BOX PLOT - AGE
	group1Box <- obj[obj$age=='20 or below',]
	group2Box <- obj[obj$age=='21 - 30',]
	group3Box <- obj[obj$age=='31 - 40',]
	fn <- paste('output/',foldername,'/boxplot_age.png', sep = "")
	png(fn, 600, 500)
	boxplot(obj$ttl_point, group1Box$ttl_point, group2Box$ttl_point, group3Box$ttl_point, names=c('Overall', '20 or below', '21 - 30', '31 - 40'), ylab='Age Range', horizontal = TRUE, xlab=xLabelName, col=c('yellow', 'White', 'White', 'White'))
	abline(v=population_mean, col='blue', lwd=1, lty=2)
	abline(v=mild_point, col='orange', lwd=1, lty=2)
	abline(v=high_point, col='orange', lwd=1, lty=2)
	axis(1, at=population_mean,labels=population_mean)
	axis(1, at=mild_point,labels=mild_point)
	axis(1, at=high_point,labels=high_point)
	
	graphics.off()

}
