This cookbook describes all the variables.

# Variables

## features
* class : data.frame
* dim : 561 x 2

## data_test
* class : data.frame
* dim : 2947 x 561
## data_train
* class : data.frame
* dim : 7352 x 561

## label_test
* class : data.frame
* dim : 2947 x 1
## label_train
* class : data.frame
* dim : 7352 x 1

## subject_test
* class : data.frame
* dim : 2947 x 1
## subject_train
* class : data.frame
* dim : 7352 x 1

## data_merged
* class : data.frame
* dim : 10299 x 561
## label_merged
* class : data.frame
* dim : 10299 x 1
## subject_merged
* class : data.frame
* dim : 10299 x 1

## index_mean
* class : integer vector
* length : 33
## index_std
* class : integer vector
* length : 33

## label_text
* class : character vector
* length : 6

## label_text_merged
* class : character vector
* length : 10299
## data_merged_ms
* class : data.frame
* dim : 10299 x 68

## by_activity_subject
* class : grouped_df, tbl_df, tbl, data.frame
* dim : 10299 x 68
## data_group_mean
* class : grouped_df, tbl_df, tbl, data.frame
* dim : 80 x 68
