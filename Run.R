# CHANGE DIRECTORY
setwd("C:/workspace/SocialAnxietyStudyInR/")
source("processes/0_DataPreprocessing.R")
source("processes/1_DataDescriptive.R")
source("processes/2_DataRegression.R")
source("processes/3_DataCorrelation.R")

# READ CSV FILES
surveys <- read.csv(file = 'dataset/Social_Anxiety_Survey_Master.csv')

# DATA CLEANING AND PREPARATION
surveys <- PreProcessing.Run(surveys)

# PRINT HEADER
head(surveys)

#-------------------------------------------
# ANALYSIS / DESCRITIVE
#-------------------------------------------

# DESCRITIVE ANALYSIS - ALL
Descriptive.Run(surveys, 'all')

# DESCRITIVE ANALYSIS - STUDENT
studentdf <- surveys[surveys$student=='Yes',]
Descriptive.Run(studentdf, 'student')

# DESCRITIVE ANALYSIS - NONE STUDENT
noneStudentdf <- surveys[surveys$student=='No',]
Descriptive.Run(noneStudentdf, 'nonestudent')


#-------------------------------------------
# ANALYSIS / CORRELATION
#-------------------------------------------

# Correlation.All.Run(surveys)
# Correlation.Student.Run(studentdf)
# Correlation.NoneStudent.Run(noneStudentdf)