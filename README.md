This document is about how **run_analysis.R** works.

The R script can be divided **7** parts in order.

1. Reading data sets from files.
  * Lines from 1 to 23
2. Merges the training and the test sets
  * Lines from 28 to 30
3. Extracts only the measurements on the mean and standard deviation for each measurement.
  * Line 51
4. Uses descriptive activity names to name the activities in the data set
5. Appropriately labels the data set with descriptive variable names.
  * Line 59
6. From the data set in step 5, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
  * 
7. Write the second data set as a txt file and delete all variables used in run_analysis.R.
  * Write

## Part 1
In this part, the R script reads files using the **read.table** function.

* The **feature** variable is used to name columns of the test and the train data sets.
* The **data_test** variable is a data set that stores the 561 different data from accelerometers and gyroscopes of subjects in test group.
* The **data_train** variable is a data set that stores the 561 different data from accelerometers and gyroscopes of subjects in train group.


## Part 2
In this part, the R script merge data sets - abot of test and those of train using **rbind**.

Three data sets are merged in this part.

## Part 3
In this part, extracts only the measurements on the mean and standard deviation for each measurement.

The **grep** function is used to find indices of features in the **features** variable, which contain "mean()" or "std()".

Then, select the columns about mean and standard deviation from **data_merged** and assign it to **data_merged_ms**.

## Part 4

## Part 5

## Part 6

## PArt 7


Getting and Cleaning Data of Data Specialization in Courera
