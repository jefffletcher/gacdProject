# 1) Download dataset from:
#    https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 
# 
# 2) Unzip dataset
# 3) Run this script within the "UCI HAR Dataset" directory

library(dplyr)

# Initial load and merge of train and test data
initial_train_table <- read.table("train/X_train.txt")
subject_train_table <- read.table("train/subject_train.txt")
activity_train_table <- read.table("train/y_train.txt")
complete_train_table <- cbind(subject_train_table, activity_train_table, initial_train_table)

initial_test_table <- read.table("test/X_test.txt")
subject_test_table <- read.table("test/subject_test.txt")
activity_test_table <- read.table("test/y_test.txt")
complete_test_table <- cbind(subject_test_table, activity_test_table, initial_test_table)

all_data <- rbind(complete_train_table, complete_test_table)

# Load column names and clean them up
features_table <- read.table("features.txt")
colnames(features_table) <- c("number", "name")
features_table$name <- gsub("\\(\\)", "", features_table$name)
features_table$name <- gsub("-", ":", features_table$name)

# Assign column names to dataset
colnames(all_data) <- c("Subject", "Activity", features_table$name)

# Subset of columns that originally included only mean() and std() functions
mean_std_cols <- grepl("mean|std", colnames(all_data)) 
mean_freq_cols <- grepl("meanFreq", colnames(all_data))
mean_std_cols[1:2] <- TRUE # Keep the Subject and Activity columns too
mean_std_table <- subset(all_data, select = mean_std_cols & !mean_freq_cols)

# Replace activity number with name
activity_table <- read.table("activity_labels.txt")
mean_std_table$Activity <- activity_table[mean_std_table$Activity, 2]

# Improve variable names
names(mean_std_table) <- gsub("^tBodyAcc", "timeBodyAcceleration", names(mean_std_table))
names(mean_std_table) <- gsub("^tBodyGyro", "timeBodyAngularVelocity", names(mean_std_table))
names(mean_std_table) <- gsub("^tGravityAcc", "timeGravityAcceleration", names(mean_std_table))

names(mean_std_table) <- gsub("^fBodyAcc", "frequencyBodyAcceleration", names(mean_std_table))
names(mean_std_table) <- gsub("^fBodyGyro", "frequencyBodyAngularVelocity", names(mean_std_table))
names(mean_std_table) <- gsub("^fBodyBodyAcc", "frequencyBodyBodyAcceleration", names(mean_std_table))
names(mean_std_table) <- gsub("^fBodyBodyGyro", "frequencyBodyBodyAngularVelocity", names(mean_std_table))

names(mean_std_table) <- gsub("Mag", "Magnitude", names(mean_std_table))
names(mean_std_table) <- gsub(":mean", "Mean", names(mean_std_table))
names(mean_std_table) <- gsub(":std", "Std", names(mean_std_table))

names(mean_std_table) <- gsub(":X", "X", names(mean_std_table))
names(mean_std_table) <- gsub(":Y", "Y", names(mean_std_table))
names(mean_std_table) <- gsub(":Z", "Z", names(mean_std_table))

# Calculate averages of each column grouped by Subject and Activity
summary_table <- mean_std_table %>%
  group_by(Subject, Activity) %>%
  summarise_each(funs(mean))

# Write out summary table
write.table(summary_table, "summary_table.txt", row.name=FALSE)
