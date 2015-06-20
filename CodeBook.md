# Code Book

This document describes the code inside `run_analysis.R`.

##Steps Performed to obtain clean tidy data

Downloading the zip file from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip and unzipping it
Merging training and test dataset to create one dataset
Extracting only the measurements on the mean and standard deviation for each measurement. 
Using factor function for naming the activities in the data set
Appropriately labeling the data set with descriptive variable names obtained from features.txt
Using ddply function to make independent tidy data set with the average of each variable for each activity and each subject.

##Tidy DataSet Output.txt##

  Below 86 variable staring from tBodyAcc-mean()-X to angle(Z,gravityMean) describes the average value for each activity of each subject.
  tBodyAcc-mean()-X                   : numeric
  tBodyAcc-mean()-Y                   : numeric 
  tBodyAcc-mean()-Z                   : numeric  
  tBodyAcc-std()-X                    : numeric  
  tBodyAcc-std()-Y                    : numeric  
  tBodyAcc-std()-Z                    : numeric  
  tGravityAcc-mean()-X                : numeric  
  tGravityAcc-mean()-Y                : numeric 
  tGravityAcc-mean()-Z                : numeric  
  tGravityAcc-std()-X                 : numeric  
  tGravityAcc-std()-Y                 : numeric 
  tGravityAcc-std()-Z                 : numeric  
  tBodyAccJerk-mean()-X               : numeric  
  tBodyAccJerk-mean()-Y               : numeric 
  tBodyAccJerk-mean()-Z               : numeric
  tBodyAccJerk-std()-X                : numeric
  tBodyAccJerk-std()-Y                : numeric
  tBodyAccJerk-std()-Z                : numeric
  tBodyGyro-mean()-X                  : numeric
  tBodyGyro-mean()-Y                  : numeric
  tBodyGyro-mean()-Z                  : numeric
  tBodyGyro-std()-X                   : numeric
  tBodyGyro-std()-Y                   : numeric
  tBodyGyro-std()-Z                   : numeric
  tBodyGyroJerk-mean()-X              : numeric
  tBodyGyroJerk-mean()-Y              : numeric
  tBodyGyroJerk-mean()-Z              : numeric
  tBodyGyroJerk-std()-X               : numeric
  tBodyGyroJerk-std()-Y               : numeric
  tBodyGyroJerk-std()-Z               : numeric
  tBodyAccMag-mean()                  : numeric
  tBodyAccMag-std()                   : numeric
  tGravityAccMag-mean()               : numeric
  tGravityAccMag-std()                : numeric
  tBodyAccJerkMag-mean()              : numeric
  tBodyAccJerkMag-std()               : numeric
  tBodyGyroMag-mean()                 : numeric
  tBodyGyroMag-std()                  : numeric
  tBodyGyroJerkMag-mean()             : numeric
  tBodyGyroJerkMag-std()              : numeric
  fBodyAcc-mean()-X                   : numeric
  fBodyAcc-mean()-Y                   : numeric
  fBodyAcc-mean()-Z                   : numeric
  fBodyAcc-std()-X                    : numeric
  fBodyAcc-std()-Y                    : numeric
  fBodyAcc-std()-Z                    : numeric
  fBodyAcc-meanFreq()-X               : numeric
  fBodyAcc-meanFreq()-Y               : numeric
  fBodyAcc-meanFreq()-Z               : numeric
  fBodyAccJerk-mean()-X               : numeric
  fBodyAccJerk-mean()-Y               : numeric
  fBodyAccJerk-mean()-Z               : numeric
  fBodyAccJerk-std()-X                : numeric
  fBodyAccJerk-std()-Y                : numeric
  fBodyAccJerk-std()-Z                : numeric
  fBodyAccJerk-meanFreq()-X           : numeric
  fBodyAccJerk-meanFreq()-Y           : numeric
  fBodyAccJerk-meanFreq()-Z           : numeric
  fBodyGyro-mean()-X                  : numeric
  fBodyGyro-mean()-Y                  : numeric
  fBodyGyro-mean()-Z                  : numeric
  fBodyGyro-std()-X                   : numeric
  fBodyGyro-std()-Y                   : numeric
  fBodyGyro-std()-Z                   : numeric
  fBodyGyro-meanFreq()-X              : numeric
  fBodyGyro-meanFreq()-Y              : numeric
  fBodyGyro-meanFreq()-Z              : numeric
  fBodyAccMag-mean()                  : numeric
  fBodyAccMag-std()                   : numeric
  fBodyAccMag-meanFreq()              : numeric
  fBodyBodyAccJerkMag-mean()          : numeric
  fBodyBodyAccJerkMag-std()           : numeric
  fBodyBodyAccJerkMag-meanFreq()      : numeric
  fBodyBodyGyroMag-mean()             : numeric
  fBodyBodyGyroMag-std()              : numeric
  fBodyBodyGyroMag-meanFreq()         : numeric
  fBodyBodyGyroJerkMag-mean()         : numeric
  fBodyBodyGyroJerkMag-std()          : numeric
  fBodyBodyGyroJerkMag-meanFreq()     : numeric
  angle(tBodyAccMean,gravity)         : numeric
  angle(tBodyAccJerkMean),gravityMean): numeric 
  angle(tBodyGyroMean,gravityMean)    : numeric 
  angle(tBodyGyroJerkMean,gravityMean): numeric  
  angle(X,gravityMean)                : numeric  
  angle(Y,gravityMean)                : numeric  
  angle(Z,gravityMean)                : numeric 
  activity                            : Describes the activity performed by subjects
										1 WALKING
										2 WALKING_UPSTAIRS
										3 WALKING_DOWNSTAIRS
										4 SITTING
										5 STANDING
										6 LAYING
  subject                             : Describes the different person who took part in experiment
										num 1 to 30