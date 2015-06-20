
analyseR <- function() {
	library(plyr)
	library(bitops)
	library(RCurl)
	
	#Creating a directory named 'Data' if not exists already
	if (!dir.exists('Data')) {
		dir.create('Data')
	}
	
	#Downloading the zip file and unzipping it
	url <- 'https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip'
	download.file(url,destfile='./Data/gdp.csv', method = 'libcurl')
	unzip(zipfile='UCI HAR Dataset.zip')

	#defining the file path name of required data set
	activityLabelPath = './Data/UCI HAR Dataset/activity_labels.txt'
	featureLabelPath = './Data/UCI HAR Dataset/features.txt'
	
	subjectTrainPath = './Data/UCI HAR Dataset/train/subject_train.txt'
	xTrainPath = './Data/UCI HAR Dataset/train/X_train.txt'
	yTrainPath = './Data/UCI HAR Dataset/train/y_train.txt'
	
	subjectTestPath = './Data/UCI HAR Dataset/train/subject_test.txt'
	xTestPath = './Data/UCI HAR Dataset/train/X_test.txt'
	yTestPath = './Data/UCI HAR Dataset/train/y_test.txt'
	
	#Reading activity label from the file and storing it
	activityLabel <- read.csv(activityLabelPath, sep = ' ', header = FALSE)
	activityLabel <- as.character(activityLabel[,2])

	#Reading feature label from the file and storing it
	featureLabel <- read.csv(featureLabelPath, sep = ' ', header = FALSE)
	featureLabel <- as.character(featureLabel[,2])

	# Step 1 : Merges the training and the test sets to create one data set.
	x_train_data <- read.table(file='./Data/UCI HAR Dataset/train/X_train.txt')
	x_test_data <- read.table(file='./Data/UCI HAR Dataset/test/X_test.txt')

	y_train_data <- read.table(file='./Data/UCI HAR Dataset/train/y_train.txt')
	y_train_data <- y_train_data$V1

	x_train_data$activity <- y_train_data

	y_test_data <- read.table(file='./Data/UCI HAR Dataset/test/y_test.txt')
	y_test_data <- y_test_data$V1

	x_test_data$activity <- y_test_data

	subject_train_data <- read.table(file='./Data/UCI HAR Dataset/train/subject_train.txt')
	subject_train_data <- subject_train_data$V1

	x_train_data$subject <- subject_train_data

	subject_test_data <- read.table(file='./Data/UCI HAR Dataset/test/subject_test.txt')
	subject_test_data <- subject_test_data$V1

	x_test_data$subject <- subject_test_data
	
	reqData <- rbind(x_train_data, x_test_data)

	#step4 : Appropriately labels the data set with descriptive variable names. 
	colnames(reqData)<-c(featureLabel,'activity','subject')
	
	# Step2 : Extracts only the measurements on the mean and standard deviation for each measurement.
	indices <- grep('*.mean.*|*.std.*', tolower(colnames(reqData)))
	indices <- c(indices,562,563)
	reqData <- reqData[,indices]
	
	#step5 : From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
	reqData <- ddply(reqData, .(subject,activity), colMeans)

	#step3 : Uses descriptive activity names to name the activities in the data set
	reqData[,'activity'] <- factor(reqData[,'activity'], levels=c(1,2,3,4,5,6), labels=activityLabel)

	#Using write.table() with attribute row.name=FALSE to write tidy data to output.txt file
	write.table(reqData, file='output.txt', row.names=FALSE)

}

