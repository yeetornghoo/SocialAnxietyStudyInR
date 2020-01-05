# CHANGE DIRECTORY
setwd("C:/workspace/SocialAnxietyStudyInR/")
source("processes/0_DataPreprocessing.R")
source("processes/1_DataDescriptive.R")
source("processes/2_DataRegression.R")
source("processes/3_DataCorrelation.R")
source("processes/4_DataTest.R")

# READ CSV FILES
surveys <- read.csv(file = 'dataset/Social_Anxiety_Survey_Master.csv')

# DATA CLEANING AND PREPARATION
surveys <- PreProcessing.Run(surveys)

# PRINT HEADER
head(surveys)

studentdf <- surveys[surveys$student=='Yes',]
noneStudentdf <- surveys[surveys$student=='No',]

#-------------------------------------------
# ANALYSIS / DESCRITIVE
#-------------------------------------------

# DESCRITIVE ANALYSIS - ALL
Descriptive.Run(surveys, 'all')

# DESCRITIVE ANALYSIS - STUDENT
Descriptive.Run(studentdf, 'student')

# DESCRITIVE ANALYSIS - NONE STUDENT
Descriptive.Run(noneStudentdf, 'nonestudent')

#-------------------------------------------
# ANALYSIS / CORRELATION
#-------------------------------------------

Correlation.Run(surveys, 'all')
Correlation.Run(studentdf, 'student')
Correlation.Run(noneStudentdf, 'nonestudent')

#-------------------------------------------
# ANALYSIS / T TEST
#-------------------------------------------

Test.Run(surveys, studentdf)
Test.Run(studentdf, noneStudentdf)
Test.Run(surveys, noneStudentdf)
