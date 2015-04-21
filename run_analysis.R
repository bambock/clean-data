# Ethan Bambock
# Course: Getting and Cleaning Data
# Data: 04/26/2015

## Assignment Details
##
## Create one R script called run_analysis.R that does the following:
## 1. Merges the training and the test sets to create one data set.
## 2. Extracts only the measurements on the mean and standard deviation for each measurement.
## 3. Uses descriptive activity names to name the activities in the data set
## 4. Appropriately labels the data set with descriptive activity names.
## 5. Creates a second, independent tidy data set with the average of each variable for each activity and each subject.

## PREREQUISITE
##
## Original Dataset: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 
## Download the original dataset if not already done.  Extract to data to data/UCI/*
##

# Specify libraries, file variables or local functions for tidy output and optional processing
library(dplyr)

tidy_file = "tidy_dataset.txt"
tidy_means_file = "tidy_mean_dataset.txt"
complete_data_file = "complete_dataset.txt"

makeDescriptive<-function(x) {
        x<-tolower(x)
        x<-gsub("^t", "time.", x)
        x<-gsub("^f", "fft.", x)
        x<-gsub("-mean\\(\\)", ".mean", x)
        x<-gsub("-std\\(\\)", ".std", x)
        x
}

## read the training and testing data into temporary variables for later processing
x_test<-read.table("data/UCI/test/X_test.txt")
y_test<-read.table("data/UCI/test/y_test.txt")
x_train<-read.table("data/UCI/train/X_train.txt")
y_train<-read.table("data/UCI/train/y_train.txt")

## read the subject and activity data into variables for later processing
subject_test<-read.table("data/UCI/test/subject_test.txt")
subject_train<-read.table("data/UCI/train/subject_train.txt")
lbl_activity<-read.table("data/UCI/activity_labels.txt", sep=" ", col.names = c("activity_id", "activity_label"))
lbl_features<-read.table("data/UCI/features.txt", sep=" ", col.names = c("feature_id", "feature_name"))

## 1. Merges the training and the test sets to create one data set.
test.set<-cbind(subject_test, y_test, x_test)
train.set<-cbind(subject_train, y_train, x_train)
data.set<-rbind(test.set, train.set)


## 3. Use descriptive activity names to name the activities in the data set.  Call custom function to return a more descriptive name.
lbl_features$descriptive_name<-sapply(lbl_features$feature_name, function(col){makeDescriptive(col)})
colnames(data.set)<-c("subject", "activity", as.character(lbl_features[,c("descriptive_name")]))


## 2. Extracts only the measurements on the mean and standard deviation for each measurement.
tidy<-data.set[,c(grepl("subject|activity|\\.mean$|\\.std$|\\.mean-|\\.std-", names(data.set)))]


## 4. Appropriately labels the data set with descriptive activity names.
tidy$activity<-sapply(tidy$activity, function(x){lbl_activity[x,c("activity_label")]})

## 5. Creates a second, independent tidy data set with the average of each variable for each activity and each subject.
tidy_means<-tidy %>% group_by(subject, activity) %>% summarise_each(funs(mean))

## 6. Write the datasets using write.table and row.names = FALSE
write.table(tidy, tidy_file, row.names = FALSE)
write.table(tidy_means, tidy_means_file, row.names = FALSE)
write.table(data.set, complete_data_file)

## Optionally, you can read the datasets by uncommenting these lines
# t<-read.table(tidy_file)
# tm<-read.table(tidy_means_file)