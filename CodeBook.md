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

##Variable##
1. activityLabelPath,featureLabelPath,subjectTrainPath,xTrainPath,yTrainPath,subjectTestPath,xTestPath and yTestPath have been used to
store the path of files in UCI HAR DataSet folder.
2. activityLabel, featureLabel, x_train_data, x_test_data, y_train_data, y_test_data, subject_train_data and subject_test_data contains 
data read from the corresponding file.
3. indices stores the index of the measurement related to mean and sd.
4. reqData stores final tiddy data obtained after applying different transformation.

