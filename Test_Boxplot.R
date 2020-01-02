setwd("C:/workspace/SocialAnxietyStudyInR/")

class1 <- c(162,163,163,164,168,169,170,170,171,172,176,179,180,180,182,185,187)

population_sd <- sd(class1)
population_mean <- mean(class1)  
population_q1 <- quantile(class1, 0.25)
population_q2 <- quantile(class1, 0.50)
population_q3 <- quantile(class1, 0.75)
minv = min(class1)
maxv = max(class1)

## BOX PLOT
png(file = '_bak/class1_boxplot_1.png', 600, 500)
boxplot(class1, horizontal = TRUE)

# MEAN
abline(v=population_mean, col='red', lwd=1)
axis(1, at=population_mean, labels=population_mean)

# 25%, 75%
abline(v=population_q1, col='grey', lwd=1, lty=2)
#axis(1, at=population_q1, labels=population_q1)

abline(v=population_q2, col='grey', lwd=1, lty=2)
#axis(1, at=population_q2, labels=population_q2)

abline(v=population_q3, col='grey', lwd=1, lty=2)
#axis(1, at=population_q3, labels=population_q3)

graphics.off()


## DNORM
x <- seq(minv, maxv, by =1)
y <- dnorm(x, mean = population_mean, sd = population_sd)
png(file = '_bak/class1_dnorm.png', 600, 500)
plot(x, y, type = 'l', lwd=1)
abline(v=population_mean, col='red', lwd=1)
axis(1, at=population_mean, labels=population_mean)
abline(v=population_q1, col='grey', lwd=1, lty=2)
axis(1, at=population_q1, labels=population_q1)

abline(v=population_q2, col='grey', lwd=1, lty=2)
axis(1, at=population_q2, labels=population_q2)

abline(v=population_q3, col='grey', lwd=1, lty=2)
axis(1, at=population_q3, labels=population_q3)
dev.off()
