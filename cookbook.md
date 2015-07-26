This cookbook describes all the variables.

# Variables

## features
Features of data that are gathered from subjects
* class : data.frame
* dim : 561 x 2
* features[,1] : ordered integers beginning with 1
* features[,2] : names of features which are the column names of data_test and data_train

## data_test
The data set that stores the data from subjects the test group
* class : data.frame
* dim : 2947 x 561

## data_train
The data set that stores the data from subjects the train group
* class : data.frame
* dim : 7352 x 561

## label_test
The data set that stores labels of activities which are correspondent with each row of data_test
* class : data.frame
* dim : 2947 x 1

## label_train
The data set that stores labels of activities which are correspondent with each row of data_train
* class : data.frame
* dim : 7352 x 1

## subject_test
The data set that stores indices of subjects which are correspondent with each row of data_test
* class : data.frame
* dim : 2947 x 1

## subject_train
The data set that stores indices of subjects which are correspondent with each row of data_test
* class : data.frame
* dim : 7352 x 1

## data_merged
The data set that is merged from data_test and data_train, which is created by attaching data_train to the end of data_test
* class : data.frame
* dim : 10299 x 561

## label_merged
The data set that is merged from label_test and label_train, which is created by attaching label_train to the end of label_test
* class : data.frame
* dim : 10299 x 1

## subject_merged
The data set that is merged from subject_test and subject_train, which is created by attaching subject_train to the end of subject_test
* class : data.frame
* dim : 10299 x 1

## index_mean
The integer vector that contains indices of feautures that stand for mean
* class : integer vector
* length : 33

## index_std
The integer vector that contains indices of all the feautures that stand for standard deviation
* class : integer vector
* length : 33

## label_text
The character vector that contains descriptive activity names, of which order corresponds to labels of activities.
* class : character vector
* length : 6

## label_text_merged
The character vector to which label_merged is converted following the correspondence between labels and descriptions
* class : character vector
* length : 10299

## data_merged_ms
The data set that is extracted from data_merged by selecting every column which stands for mean or standard deviation
* class : data.frame
* dim : 10299 x 68

## by_activity_subject
The data frame that is used to choose columns to group
* class : grouped_df, tbl_df, tbl, data.frame
* dim : 10299 x 68

## data_group_mean
The grouped data frame that is grouped by each activity and each subject and contains columns about the mean value of each feature in data_merged_ms for each group  
* class : grouped_df, tbl_df, tbl, data.frame
* dim : 80 x 68
