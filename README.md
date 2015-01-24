# gacdProject
Getting and Cleaning Data course project

The run_analysis.R script starts with data downloaded from:
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

The dataset contains accelerometer data obtained while 30 different participants were undertaking various activities. The dataset is described in detail within files downloaded from:
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

In order to extract averages of all the meanand standard deviation calculations, the following operations were performed on the raw data set:

1. Merged the training and the test sets to create one data set.
2. Extracted only the measurements on the mean and standard deviation for each measurement. 
3. Used descriptive activity names to name the activities in the data set.
4. Appropriately labeled the data set with descriptive variable names. 
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
