### PART 1 =====
# the feature vector
features <- read.table("./UCI HAR Dataset/features.txt")

# the data set of 'test'
data_test <- read.table("./UCI HAR Dataset/test/X_test.txt")
colnames(data_test) <- features[,2]

# the dtat set of 'train'
data_train <- read.table("./UCI HAR Dataset/train/X_train.txt")
colnames(data_train) <- features[,2]

# activity labels
label_test <- read.table("./UCI HAR Dataset/test/y_test.txt")    
label_train <- read.table("./UCI HAR Dataset/train/y_train.txt") 

# Each row identifies the subject who performed the activity for each window sample. 
# Its range is from 1 to 30.
subject_test <- read.table("./UCI HAR Dataset/test/subject_test.txt")    
subject_train <- read.table("./UCI HAR Dataset/train/subject_train.txt") 

#
###

### PART 2 =====
# 1. Merges the training and the test sets to create one data set.

data_merged <- rbind(data_test, data_train)
label_merged <- rbind(label_test, label_train)
subject_merged <- rbind(subject_test, subject_train)

#
###

### PART 3 =====
# 2. Extracts only the measurements on 
#    the mean and standard deviation for each measurement.

index_mean <- grep("mean()", as.character(features[,2]), fixed=T)
index_std  <- grep("std()",  as.character(features[,2]), fixed=T)

data_merged_ms <- data_merged[append(index_mean, index_std)]

#
###

### PART 4 =====
# 3. Uses descriptive activity names to name the activities in the data set

# descriptive activity names
label_text <- c("WALKING", "WALKING_UPSTAIRS", "WALKING_DOWNSTAIRS", "SITTING", "STANDING", "LAYING")

#
###

### PART 5 =====
# 4. Appropriately labels the data set with descriptive variable names.

label_text_merged <- label_text[as.numeric(unlist(label_merged))]

data_merged_ms$activity <- label_text_merged

#
###

### PART 6 =====
# 5. From the data set in step 4, 
#    creates a second, independent tidy data set 
#    with the average of each variable for each activity and each subject.

data_merged_ms$subject <- unlist(subject_merged)

if(!("dplyr" %in% installed.packages()[,"Package"])) {install.packages("dplyr")}
library(dplyr)

by_activity_subject <- group_by(data_merged_ms, activity, subject)
data_group_mean <- summarise_each(by_activity_subject,funs(mean))

#
###

### PART 7 =====
# Writes the second data set as a txt file and removes all variables used in run_analysis.R.
write.table(data_group_mean, file="./data_group_mean.txt", row.names=F) 

# remove all variables.
rm(features, data_test, data_train, label_test, label_train, label_text, subject_test, subject_train, index_mean, index_std, data_merged, label_merged, subject_merged, data_merged_ms, label_text_merged, by_activity_subject, data_group_mean)

###
