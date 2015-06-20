# Code Book

This document describes the code inside `run_analysis.R`.

##Steps Performed to obtain clean tidy data

1. Downloading the zip file from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip and unzipping it
2. Merging training and test dataset to create one dataset
3. Extracting only the measurements on the mean and standard deviation for each measurement.
4. Using factor function for naming the activities in the data set
5. Appropriately labeling the data set with descriptive variable names obtained from features.txt
6. Using ddply function to make independent tidy data set with the average of each variable for each activity and each subject.

##Tidy DataSet Output.txt##
1. First 86 columns contains the average of each variable for each activity and each subject.
2. 87th Column contains the activity performed by subject. Code for different activity:
* 1 WALKING
* 2 WALKING_UPSTAIRS
* 3 WALKING_DOWNSTAIRS
* 4 SITTING
* 5 STANDING
* 6 LAYING
3. 88th Column contains the id (1 to 30) of person who performed experiment.

##Variable Name##
*tBodyAcc-mean()-X
*tBodyAcc-mean()-Y
*tBodyAcc-mean()-Z
*tBodyAcc-std()-X
*tBodyAcc-std()-Y
*tBodyAcc-std()-Z
*tGravityAcc-mean()-X
*tGravityAcc-mean()-Y
*tGravityAcc-mean()-Z
*tGravityAcc-std()-X
*tGravityAcc-std()-Y
*tGravityAcc-std()-Z
*tBodyAccJerk-mean()-X
*tBodyAccJerk-mean()-Y
*tBodyAccJerk-mean()-Z
*tBodyAccJerk-std()-X
*tBodyAccJerk-std()-Y
*tBodyAccJerk-std()-Z
*tBodyGyro-mean()-X
*tBodyGyro-mean()-Y
*tBodyGyro-mean()-Z
*tBodyGyro-std()-X
*tBodyGyro-std()-Y
*tBodyGyro-std()-Z
*tBodyGyroJerk-mean()-X
*tBodyGyroJerk-mean()-Y
*tBodyGyroJerk-mean()-Z
*tBodyGyroJerk-std()-X
*tBodyGyroJerk-std()-Y
*tBodyGyroJerk-std()-Z
*tBodyAccMag-mean()
*tBodyAccMag-std()
*tGravityAccMag-mean()
*tGravityAccMag-std()
*tBodyAccJerkMag-mean()
*tBodyAccJerkMag-std()
*tBodyGyroMag-mean()
*tBodyGyroMag-std()
*tBodyGyroJerkMag-mean()
*tBodyGyroJerkMag-std()
*fBodyAcc-mean()-X
*fBodyAcc-mean()-Y
*fBodyAcc-mean()-Z
*fBodyAcc-std()-X
*fBodyAcc-std()-Y
*fBodyAcc-std()-Z
*fBodyAcc-meanFreq()-X
*fBodyAcc-meanFreq()-Y
*fBodyAcc-meanFreq()-Z
*fBodyAccJerk-mean()-X
*fBodyAccJerk-mean()-Y
*fBodyAccJerk-mean()-Z
*fBodyAccJerk-std()-X
*fBodyAccJerk-std()-Y
*fBodyAccJerk-std()-Z
*fBodyAccJerk-meanFreq()-X
*fBodyAccJerk-meanFreq()-Y
*fBodyAccJerk-meanFreq()-Z
*fBodyGyro-mean()-X
*fBodyGyro-mean()-Y
*fBodyGyro-mean()-Z
*fBodyGyro-std()-X
*fBodyGyro-std()-Y
*fBodyGyro-std()-Z
*fBodyGyro-meanFreq()-X
*fBodyGyro-meanFreq()-Y
*fBodyGyro-meanFreq()-Z
*fBodyAccMag-mean()
*fBodyAccMag-std()
*fBodyAccMag-meanFreq()
*fBodyBodyAccJerkMag-mean()
*fBodyBodyAccJerkMag-std()
*fBodyBodyAccJerkMag-meanFreq()
*fBodyBodyGyroMag-mean()
*fBodyBodyGyroMag-std()
*fBodyBodyGyroMag-meanFreq()
*fBodyBodyGyroJerkMag-mean()
*fBodyBodyGyroJerkMag-std()
*fBodyBodyGyroJerkMag-meanFreq()
*angle(tBodyAccMean,gravity)
*angle(tBodyAccJerkMean),gravityMean)
*angle(tBodyGyroMean,gravityMean)
*angle(tBodyGyroJerkMean,gravityMean)
*angle(X,gravityMean)
*angle(Y,gravityMean)
*angle(Z,gravityMean)
*activity
*subject
