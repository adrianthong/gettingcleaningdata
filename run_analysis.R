## Coursera DataScience
## Getting and Cleaning Data Assignment
## 
## 1.Merges training and test sets to create one data set. 
## 2.Extracts only the measurements on the mean and standard deviation 
##   for each measurement. 
## 3.Uses descriptive activity names to name the activities in the data set
## 4.Appropriately labels the data set with descriptive variable names.
## 5.From the data set in step 4, creates a second, independent tidy data 
##   set with the average of each variable for each activity and each subject.
## 
## Author: Adrian Thong
## Date: 13-July-2015

## Load the data sets while populating the column names
print(c("Loading all the data files"))
# Load test data sets; subject, x, y 
test_subject_file <- read.table(".\\UCI HAR Dataset\\test\\subject_test.txt", 
                                col.names = c("SubjectID"))
test_y_file <- read.table(".\\UCI HAR Dataset\\test\\y_test.txt", 
                          col.names = c("Activity"))
test_x_file <- read.table(".\\UCI HAR Dataset\\test\\X_test.txt")

# Load train data sets; subject, x, y 
train_subject_file <- read.table(".\\UCI HAR Dataset\\train\\subject_train.txt", 
                                 col.names = c("SubjectID"))
train_y_file <- read.table(".\\UCI HAR Dataset\\train\\y_train.txt", 
                           col.names = c("Activity"))
train_x_file <- read.table(".\\UCI HAR Dataset\\train\\X_train.txt")

# Load other data sets; activity label, features  
activity_label_file <- read.table(".\\UCI HAR Dataset\\activity_labels.txt",
                                  col.names = c("ActivityID", "Activity"))
features_file <- read.table(".\\UCI HAR Dataset\\features.txt",
                            col.names = c("FeaturesID", "Features"))

## Merge the Train and Test data sets
print(c("Processing data files"))
merged_subject <- rbind(test_subject_file, train_subject_file)
merged_x <- rbind(test_x_file, train_x_file)
merged_y <- rbind(test_y_file, train_y_file)

## We do not need the raw files anymore, let's free some memory 
rm(test_subject_file)
rm(test_y_file)
rm(test_x_file)
rm(train_subject_file)
rm(train_x_file)
rm(train_y_file)

## We only want the Mean and Standard Deviation columns
## Search and keep only columns with the characters "-mean" and "-std"
features_file <- features_file[grep(glob2rx("*-mean*|*-std*"), 
                                    features_file$Features),]
merged_x <- merged_x[,features_file$FeaturesID]

## Clean up the column labels to be more descriptive 
features_file$Features <- gsub("\\()", "",features_file$Features)
features_file$Features <- gsub("^t", "time_",features_file$Features)
features_file$Features <- gsub("^f", "freq_",features_file$Features)
features_file$Features <- gsub("-meanFreq", "_MeanFreq",features_file$Features)
features_file$Features <- gsub("-mean", "_Mean",features_file$Features)
features_file$Features <- gsub("-std", "_StdDev",features_file$Features)
features_file$Features <- gsub("-X", "_of_X_Axis",features_file$Features)
features_file$Features <- gsub("-Y", "_of_Y_Axis",features_file$Features)
features_file$Features <- gsub("-Z", "_of_Z_Axis",features_file$Features)

## Populate the column names of the variables with the cleaned up labels 
colnames(merged_x) <- features_file$Features

## Replace Activity ID with Activity Description 
for (i in 1:nrow(activity_label_file)) {
        merged_y[merged_y$Activity == i,] <- 
                as.character(activity_label_file[activity_label_file$ActivityID == i,2])
}

## Combine all columns into 1 table, sort by Subject and Activity for 
## better readability 
tidy_data_1 <- cbind(merged_subject, merged_y, merged_x) 
tidy_data_1 <- tidy_data_1[order(tidy_data_1$SubjectID,tidy_data_1$Activity),]

## Freeing up more memory  
rm(merged_subject)
rm(merged_y)
rm(merged_x)
rm(activity_label_file)
rm(features_file)

## Write to file in txt tab delimited format
print(c("Files will be written to ",getwd()))
print(c("Writing W3Assignment_Merged_Data_All.txt"))
write.table(tidy_data_1, ".\\W3Assignment_Merged_Data_All.txt", 
            sep = "\t",
            row.names = FALSE)

## Get Average of each variable for each Activity and each Subject
tidy_data_2 <- aggregate(tidy_data_1[,3:81], 
                         by=list(BySubjectID = tidy_data_1$SubjectID,
                                 ByActivity = tidy_data_1$Activity),
                         mean)
tidy_data_2 <- tidy_data_2[order(tidy_data_2$BySubjectID,tidy_data_2$ByActivity),]

## Change column names to be more accurate
colnames(tidy_data_2)[3:81] <- gsub("^", "Mean_of_",colnames(tidy_data_2)[3:81])

## Write to file in txt tab delimited format
print(c("Writing W3Assignment_Mean_Data_bySubjectActivity.txt"))
write.table(tidy_data_2, ".\\W3Assignment_Mean_Data_bySubjectActivity.txt",
            sep = "\t",
            row.names = FALSE)
