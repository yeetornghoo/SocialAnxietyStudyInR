# CHANGE DIRECTORY
setwd("C:/workspace/SocialAnxietyStudyInR/")

#-------------------------------------------
# DATA CLEANING AND PREPARATION
#-------------------------------------------

# READ CSV FILES
surveys <- read.csv(file = 'dataset/Social Anxiety Survey_Master.csv')

# RENAME DATAFRAME HEADER
names(surveys)[1] <- "timestamp"
names(surveys)[2] <- "gender"
names(surveys)[3] <- "student"
names(surveys)[4] <- "age"
names(surveys)[5] <- "marital"
names(surveys)[6] <- "max_hours"
names(surveys)[7] <- "saq1"
names(surveys)[8] <- "saq2"
names(surveys)[9] <- "saq3"
names(surveys)[10] <- "saq4"
names(surveys)[11] <- "saq5"
names(surveys)[12] <- "saq6"

# REMOVE UNWANTED COLUMNS
surveys$timestamp <- NULL
surveys$X <- NULL

# TRANSFORM DATA - STUDENT
surveys$student <- gsub("Yes", "1", surveys$student)
surveys$student <- gsub("No", "0", surveys$student)

# TRANSFORM DATA - MARITAL
surveys$marital <- gsub("Single", "S", surveys$marital)
surveys$marital <- gsub("Married", "M", surveys$marital)

# TRANSFORM DATA - MAXIMUM HOURS
surveys$max_hours <- gsub("0", "0", surveys$max_hours)
surveys$max_hours <- gsub("Less than 1 hours per day", "1", surveys$max_hours)
surveys$max_hours <- gsub("Less than 2 hours per day", "2", surveys$max_hours)
surveys$max_hours <- gsub("Less than 3 hours per day", "3", surveys$max_hours)
surveys$max_hours <- gsub("Less than 4 hours per day", "4", surveys$max_hours)
surveys$max_hours <- gsub("4 hours and above per day", "24", surveys$max_hours)

# TRANSFORM DATA - SAQ5
surveys$saq5[surveys$saq5 == 1] <- 5
surveys$saq5[surveys$saq5 == 2] <- 4
surveys$saq5[surveys$saq5 == 3] <- 3
surveys$saq5[surveys$saq5 == 4] <- 2
surveys$saq5[surveys$saq5 == 5] <- 1

# TRANSFORM DATA - SAQ6
surveys$saq6[surveys$saq6 == 1] <- 5
surveys$saq6[surveys$saq6 == 2] <- 4
surveys$saq6[surveys$saq6 == 3] <- 3
surveys$saq6[surveys$saq6 == 4] <- 2
surveys$saq6[surveys$saq6 == 5] <- 1

# ADD NEW TOTAL COLUMN
surveys$ttl_point <- surveys$saq1 + surveys$saq2 + surveys$saq3 + surveys$saq4 + surveys$saq5 + surveys$saq6 

# PRINT HEADER
head(surveys)

#-------------------------------------------
# ANALYSIS / DESCRITIVE
#-------------------------------------------

# BOX PLOT - GENERAL
femaleBox <- surveys[surveys$gender=="Female",]
maleBox <- surveys[surveys$gender=="Male",]
singleBox <- surveys[surveys$marital=="S",]
marriedBox <- surveys[surveys$marital=="M",]
studentBox <- surveys[surveys$student=="1",]
notStudentBox <- surveys[surveys$student=="0",]
png("output/student_boxplot.png",1000,800)
boxplot(surveys$ttl_point, femaleBox$ttl_point, maleBox$ttl_point, singleBox$ttl_point, marriedBox$ttl_point, studentBox$ttl_point, notStudentBox$ttl_point, horizontal = TRUE, xlab="Total Soxial Anxiety Point", names=c("All", "Female", "Male", "Single", "Married", "Student", "Not Student"))
graphics.off()