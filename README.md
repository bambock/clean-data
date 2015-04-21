# Getting & Cleaning Data Project

This project was designed to utilize many of the skills attained in the Getting and Cleaning Data course.  The purpose of the project was to utilize an existing dataset which represented measurements of mobile systems and wearable systems.  The data collected was segmented into training and testing data and field descriptors, as so was activity and feature information.


## run_analysis.R

This is the only R Script which processes the input files from the experiment training and testing datasets, and is used to build a complete dataset.  run_analysis.R looks for the data files in the location of data/UCI/*.  After the dataset is build, then subsequent processing has been coded to create two 'tidy' datasets:

1. The first 'tidy' dataset (output file: tidy_dataset.txt) contains more descriptive column names, specified activities in place of activity identifiers and a limited feature set.  The complete feature set was restricted to those with only mean and standard deviation references, and the naming has been changes to be more descriptive.

2. The second 'tidy' dataset (output file: tidy_means_dataset.txt) is similar in features and subjects, but the activities have been averaged for all features specified for each activities measurements.  For instance, if 10 measurements were recorded for a particular feature for a particular subject and activity, the resulting values users condensed to a mean value and stored in the dataset. 
tidy_file = "tidy_dataset.txt"
tidy_means_file = "tidy_mean_dataset.txt"
complete_data_file = "complete_dataset.txt"


## CodeBook.md 

Please see the CodeBook.md file for more details regarding the features listed in the datasets.


## Course Assignment:

The goal is to prepare tidy data that can be used for later analysis. 

You will be graded by your peers on a series of yes/no questions related to the project. 

You will be required to submit: 
1) a tidy data set as described below, 
2) a link to a Github repository with your script for performing the analysis, and 
3) a CodeBook.md that describes the variables, the data, and any transformations or work that you performed. 
4) a README.md in the repo with your scripts, that explains how all of the scripts work and how they are connected.

You should create one R script called run_analysis.R that does the following. 

    1) Merges the training and the test sets to create one data set.
    2) Extracts only the measurements on the mean and standard deviation for each measurement. 
    3) Uses descriptive activity names to name the activities in the data set
    4) Appropriately labels the data set with descriptive variable names. 

    From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
