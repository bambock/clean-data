# CodeBook.md
#### Getting & Cleaning Data

## Variables

### file variables
tidy_file - used for the output file "tidy_dataset.txt"
tidy_means_file - used for the output file "tidy_mean_dataset.txt"
complete_data_file - used for the output file "complete_dataset.txt"

### temporary data variables for preparing the dataset
x_test - variable used to temporary test data
y_test - variable used to temporary test data
x_train - variable used to temporary training data
y_train - variable used to temporary training data

### subject, activity and feature variables 
subject_test - variable used to store testing data subject ids
subject_train - variable used to store training data subject ids
lbl_activity - variable used to store activity data used for replacing activity ids in the tidy dataset
lbl_features - variable used to store feature names and more descriptive feature names used for the tidy dataset

### dataset variables
test.set - temporary variable used for testing data
train.set - temporary variable used for training data
data.set - complete dataset before tidy actions were completed
tidy - completed tidy dataset that is written to file
tidy_means - completed tidy dataset with the data summarized and written to file.

### field variables 
#### for the tidy datasets recorded during the experiment sessions

* time.bodyacc.mean-x
* time.bodyacc.mean-y
* time.bodyacc.mean-z
* time.bodyacc.std-x
* time.bodyacc.std-y
* time.bodyacc.std-z
* time.gravityacc.mean-x
* time.gravityacc.mean-y
* time.gravityacc.mean-z
* time.gravityacc.std-x
* time.gravityacc.std-y
* time.gravityacc.std-z
* time.bodyaccjerk.mean-x
* time.bodyaccjerk.mean-y
* time.bodyaccjerk.mean-z
* time.bodyaccjerk.std-x
* time.bodyaccjerk.std-y
* time.bodyaccjerk.std-z
* time.bodygyro.mean-x
* time.bodygyro.mean-y
* time.bodygyro.mean-z
* time.bodygyro.std-x
* time.bodygyro.std-y
* time.bodygyro.std-z
* time.bodygyrojerk.mean-x
* time.bodygyrojerk.mean-y
* time.bodygyrojerk.mean-z
* time.bodygyrojerk.std-x
* time.bodygyrojerk.std-y
* time.bodygyrojerk.std-z
* time.bodyaccmag.mean
* time.bodyaccmag.std
* time.gravityaccmag.mean
* time.gravityaccmag.std
* time.bodyaccjerkmag.mean
* time.bodyaccjerkmag.std
* time.bodygyromag.mean
* time.bodygyromag.std
* time.bodygyrojerkmag.mean
* time.bodygyrojerkmag.std
* fft.bodyacc.mean-x
* fft.bodyacc.mean-y
* fft.bodyacc.mean-z
* fft.bodyacc.std-x
* fft.bodyacc.std-y
* fft.bodyacc.std-z
* fft.bodyaccjerk.mean-x
* fft.bodyaccjerk.mean-y
* fft.bodyaccjerk.mean-z
* fft.bodyaccjerk.std-x
* fft.bodyaccjerk.std-y
* fft.bodyaccjerk.std-z
* fft.bodygyro.mean-x
* fft.bodygyro.mean-y
* fft.bodygyro.mean-z
* fft.bodygyro.std-x
* fft.bodygyro.std-y
* fft.bodygyro.std-z
* fft.bodyaccmag.mean
* fft.bodyaccmag.std
* fft.bodybodyaccjerkmag.mean
* fft.bodybodyaccjerkmag.std
* fft.bodybodygyromag.mean
* fft.bodybodygyromag.std
* fft.bodybodygyrojerkmag.mean
* fft.bodybodygyrojerkmag.std


## Functions

makeDescriptive(col) - this function was used to transform the feature names to a more readable format and applied to the data frame headers.  This function processes a column name given as input and returns a modified column name.  Modifications were completed with the gsub function.

## Data

Original Dataset: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

## Transformations

1. Primary transformations were related to the processing of all of the segmented testing and training data, in conjunction with the activity, subject, and features files.  These were all brought together to create one dataset.

2. Transforming the column headers as described above was another area for which the tidy data process made the features more readable and understandable.

3. Replacing activity ids with names was used more easily see what the activities were when viewing the data.

4. In the additional tidy dataset (tidy_means) the data was summarized with the mean function
