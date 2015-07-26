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

* The **features** variable is used to name columns of the test and the train data sets.
* The **data_test** variable is a data set that stores the 561 different data from accelerometers and gyroscopes of subjects in test group.
* The **data_train** variable is a data set that stores the 561 different data from accelerometers and gyroscopes of subjects in train group.


## Part 2
In this part, the R script merge data sets - abot of test and those of train using **rbind**.

Three data sets are merged in this part.

## Part 3
In this part, the R script extracts only the measurements on the mean and standard deviation for each measurement.

The **grep** function is used to find indices of features in the **features** variable, which contain "mean()" or "std()".

Then, select the columns about mean and standard deviation from **data_merged** and assign it to **data_merged_ms**.

## Part 4
In this part, the R script generates descriptive activity names from the manual.

## Part 5
In this part, the R script appropriately labels the data set with descriptive variable names.

Label 1 is correspondent to "WALKING", 2 to "WALING_UPSTAIRS", 3 to "WALKING_DOWNSTAIRS", 4 to "SITTING", 5 to "STANDING", and 6 to "LAYING".

The **unlist** function is used to convert a list to a vector.

Descriptive activity variable is attached to the **data_merged_ms** data set.

## Part 6
In this part, the R script creates a second, independent tidy data set with the average of each variable for each activity and each subject. The script uses the **dplyr** package to group rows by each activity and each subject.

First, the script adds the **subject** column to **data_merged_ms**.

Second, load the **dplyr** package. If the package has not been installed, then it is installed and then load it.

Third, using the **group_by** function, a data set grouped by each activity and each subject is created.

Lastly, the **summarizse_each** function returns a data frame with each mean of each group. The data frame is assigned to the **data_group_mean** variable.

## Part 7
In this part, write **data_group_mean** as a txt file named "data_group_mean.txt" and remove all varaibles used in run_analysis.R.
