# DATA PREPROCESSING

PreProcessing.Run <- function(df){

	obj <- df

	# RENAME COLUMNS HEADERS
	names(obj)[1] <- "timestamp"
	names(obj)[2] <- "gender"
	names(obj)[3] <- "student"
	names(obj)[4] <- "age"
	names(obj)[5] <- "marital"
	names(obj)[6] <- "max_hours"
	names(obj)[7] <- "saq1"
	names(obj)[8] <- "saq2"
	names(obj)[9] <- "saq3"
	names(obj)[10] <- "saq4"
	names(obj)[11] <- "saq5"
	names(obj)[12] <- "saq6"

	# TRANSFORM DATA - STUDENT
	# obj$student <- gsub("Yes", "1", obj$student)
	# obj$student <- gsub("No", "0", obj$student)

	# TRANSFORM DATA - MARITAL
	# obj$marital <- gsub("Single", "S", obj$marital)
	# obj$marital <- gsub("Married", "M", obj$marital)

	# TRANSFORM DATA - SAQ1
	obj$saq1[obj$saq1 == 1] <- 5
	obj$saq1[obj$saq1 == 2] <- 4
	obj$saq1[obj$saq1 == 3] <- 3
	obj$saq1[obj$saq1 == 4] <- 2
	obj$saq1[obj$saq1 == 5] <- 1

	# TRANSFORM DATA - saq2
	obj$saq2[obj$saq2 == 1] <- 5
	obj$saq2[obj$saq2 == 2] <- 4
	obj$saq2[obj$saq2 == 3] <- 3
	obj$saq2[obj$saq2 == 4] <- 2
	obj$saq2[obj$saq2 == 5] <- 1
	
	# TRANSFORM DATA - saq3
	obj$saq3[obj$saq3 == 1] <- 5
	obj$saq3[obj$saq3 == 2] <- 4
	obj$saq3[obj$saq3 == 3] <- 3
	obj$saq3[obj$saq3 == 4] <- 2
	obj$saq3[obj$saq3 == 5] <- 1
	
	# TRANSFORM DATA - saq4
	obj$saq4[obj$saq4 == 1] <- 5
	obj$saq4[obj$saq4 == 2] <- 4
	obj$saq4[obj$saq4 == 3] <- 3
	obj$saq4[obj$saq4 == 4] <- 2
	obj$saq4[obj$saq4 == 5] <- 1	
	
	# TRANSFORM DATA - MAXIMUM HOURS
	obj$max_hours <- gsub("0", "0", obj$max_hours)
	obj$max_hours <- gsub("Less than 1 hours per day", 1, obj$max_hours)
	obj$max_hours <- gsub("Less than 2 hours per day", 2, obj$max_hours)
	obj$max_hours <- gsub("Less than 3 hours per day", 3, obj$max_hours)
	obj$max_hours <- gsub("Less than 4 hours per day", 4, obj$max_hours)
	obj$max_hours <- gsub("4 hours and above per day", 5, obj$max_hours)
	
	# ADD NEW TOTAL COLUMN
	obj$ttl_point <- obj$saq1 + obj$saq2 + obj$saq3 + obj$saq4 + obj$saq5 + obj$saq6 

	# REMOVE UNWANTED COLUMNS
	obj$timestamp <- NULL
	obj$X <- NULL
	obj$saq1 <- NULL
	obj$saq2 <- NULL
	obj$saq3 <- NULL
	obj$saq4 <- NULL
	obj$saq5 <- NULL
	obj$saq6 <- NULL
	
	return(obj)
}