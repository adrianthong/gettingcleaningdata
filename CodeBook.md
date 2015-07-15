
# Coursera Data Science
# Getting and Cleaning Data
# Week 3 Assignment Code Book

___
### Table of Content
1. Data
2. Transformation
3. Variables

___
### Data
The data is data collection of accelerometers from the Samsung Galaxy S smartphone. The data can be obtained from the the source:
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

Full description is available at the site where the data is obtained:
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 

The R Script, Readme and output files can be found here:


Data from 8 files are read from the folder **'UCI HAR Dataset'**:  
1. activity_labels.txt  
2. features.txt  
3. \test\subject_test.txt  
4. \test\X_test.txt  
5. \test\y_test.txt  
6. \train\subject_train.txt  
7. \train\X_train.txt  
8. \train\y_train.txt  

The R Script `run_analysis.R` will write 2 tab delimited txt file to the R working directory.  
1. W3Assignment_Merged_Data_All.txt  
2. W3Assignment_Mean_Data_bySubjectActivity.txt  

The file `W3Assignment_Merged_Data_All.txt` is a tidy data of the various data sets consolidated into one table. The Mean and Standard Variation columns are extracted from the data sets and the variable column names are updated to be more descriptive. 

The file `W3Assignment_Mean_Data_bySubjectActivity.txt` shows the Mean value of the variables grouped by BySubjectID and ByActivity. The variable column names are also updated to be more descriptive. 

___
### Transformation
The R Script `run_analysis.R` can be found in the GitHub repository mentioned above. The R Script will perform the following actions.

>1. Load the 8 files and names the columns.
>2. Merge the files `test_subject_file`, `train_subject_file` into `merged_subject`. 
>3. Merge the files `test_x_file`, `train_x_file` into `merged_x`.
>4. Merge the files `test_y_file`, `train_x_file` into `merged_y`. 
>5. Keep only the Mean and Standard Deviation variable columns in `merged_x`. 
>6. Edit the variable names in `features.txt` to be more descriptive and replace the column names in `merged_x` with the updated variable names. 
>7. Update the Activity column with actual Activity descriptions from `activity_label.txt`.
>8. Merge the files `merged_subject`, `merged_y`, `merged_x` into `tidy_data_1` and sort by SubjectID and Activity.
>9. Write `tidy_data_1` to the file `W3Assignment_Merged_Data_All.txt` in the working directory.
>10. Get the average of the `tidy_data_1` variables by bySubjectID and byActivity into `tidy_data_2` and sort by bySubjectID and byActivity. 
>11. Edit the variable column names in `tidy_data_2` to be more descriptive.
>12. Write `tidy_data_2` to the file `W3Assignment_Mean_Data_bySubjectActivity.txt` in the working directory.

___
### Variables
```
Variable label: Indicating the Subject ID that data is collected from. There is a total of 30 participants.  
Variable name: 	SubjectID  
				bySubjectID  
Values: 1-30  
Notes: 30 participants.  
```

```
Variable label: The activity that the Subject is performing while data is being gathered.  
Variable name: 	Activity   
				byActivity   
Values: 	WALKING   
			WALKING_UPSTAIRS  
			WALKING_DOWNSTAIRS  
			SITTING  
			STANDING  
			LAYING  
Notes: Signals for 6 activities were collected.
```

```
Variable label: Data that came from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ of the smartphone. Variable names are of 3 parts, prefix, body and postfix.  
				prefix 'time_' - time domain signals captured at constant rate of 50Hz  
				prefix 'freq_' - frequency domain signals   
				body 'BodyAcc' - body acceleration signals  
				body 'GravityAcc' - gravity acceleration signals   
				body 'BodyAccJerk' - body linear acceleration signals   
				body 'BodyGyroJerk' - body angular velocity signals  
				body 'Mag' - magnitude of three-dimensional signals  
				postfix 'Mean' - Average value  
				postfix 'Mean_of_X_Axis' - Average of X Axis  
				postfix 'Mean_of_Y_Axis' - Average of Y Axis  
				postfix 'Mean_of_Z_Axis' - Average of Z Axis  
				postfix 'StdDev' - Standard Deviation  
				postfix 'StdDev_of_X_Axis' - Standard Deviation of X Axis  
				postfix 'StdDev_of_Y_Axis' - Standard Deviation of Y Axis  
				postfix 'StdDev_of_Z_Axis' - Standard Deviation of Z Axis  
				postfix 'MeanFreq' - Weighted average of the frequency components to obtain a Mean Frequency   
Variable name: 	time_BodyAcc_Mean_of_X_Axis  
				time_BodyAcc_Mean_of_Y_Axis  
				time_BodyAcc_Mean_of_Z_Axis  
				time_BodyAcc_StdDev_of_X_Axis  
				time_BodyAcc_StdDev_of_Y_Axis  
				time_BodyAcc_StdDev_of_Z_Axis  
				time_GravityAcc_Mean_of_X_Axis  
				time_GravityAcc_Mean_of_Y_Axis  
				time_GravityAcc_Mean_of_Z_Axis  
				time_GravityAcc_StdDev_of_X_Axis  
				time_GravityAcc_StdDev_of_Y_Axis  
				time_GravityAcc_StdDev_of_Z_Axis  
				time_BodyAccJerk_Mean_of_X_Axis  
				time_BodyAccJerk_Mean_of_Y_Axis  
				time_BodyAccJerk_Mean_of_Z_Axis  
				time_BodyAccJerk_StdDev_of_X_Axis  
				time_BodyAccJerk_StdDev_of_Y_Axis  
				time_BodyAccJerk_StdDev_of_Z_Axis  
				time_BodyGyro_Mean_of_X_Axis  
				time_BodyGyro_Mean_of_Y_Axis  
				time_BodyGyro_Mean_of_Z_Axis  
				time_BodyGyro_StdDev_of_X_Axis  
				time_BodyGyro_StdDev_of_Y_Axis  
				time_BodyGyro_StdDev_of_Z_Axis  
				time_BodyGyroJerk_Mean_of_X_Axis  
				time_BodyGyroJerk_Mean_of_Y_Axis  
				time_BodyGyroJerk_Mean_of_Z_Axis  
				time_BodyGyroJerk_StdDev_of_X_Axis  
				time_BodyGyroJerk_StdDev_of_Y_Axis  
				time_BodyGyroJerk_StdDev_of_Z_Axis  
				time_BodyAccMag_Mean  
				time_BodyAccMag_StdDev  
				time_GravityAccMag_Mean  
				time_GravityAccMag_StdDev  
				time_BodyAccJerkMag_Mean  
				time_BodyAccJerkMag_StdDev  
				time_BodyGyroMag_Mean  
				time_BodyGyroMag_StdDev  
				time_BodyGyroJerkMag_Mean  
				time_BodyGyroJerkMag_StdDev  
				freq_BodyAcc_Mean_of_X_Axis  
				freq_BodyAcc_Mean_of_Y_Axis  
				freq_BodyAcc_Mean_of_Z_Axis  
				freq_BodyAcc_StdDev_of_X_Axis  
				freq_BodyAcc_StdDev_of_Y_Axis  
				freq_BodyAcc_StdDev_of_Z_Axis  
				freq_BodyAcc_MeanFreq_of_X_Axis  
				freq_BodyAcc_MeanFreq_of_Y_Axis  
				freq_BodyAcc_MeanFreq_of_Z_Axis  
				freq_BodyAccJerk_Mean_of_X_Axis  
				freq_BodyAccJerk_Mean_of_Y_Axis  
				freq_BodyAccJerk_Mean_of_Z_Axis  
				freq_BodyAccJerk_StdDev_of_X_Axis  
				freq_BodyAccJerk_StdDev_of_Y_Axis  
				freq_BodyAccJerk_StdDev_of_Z_Axis  
				freq_BodyAccJerk_MeanFreq_of_X_Axis  
				freq_BodyAccJerk_MeanFreq_of_Y_Axis  
				freq_BodyAccJerk_MeanFreq_of_Z_Axis  
				freq_BodyGyro_Mean_of_X_Axis  
				freq_BodyGyro_Mean_of_Y_Axis  
				freq_BodyGyro_Mean_of_Z_Axis  
				freq_BodyGyro_StdDev_of_X_Axis  
				freq_BodyGyro_StdDev_of_Y_Axis  
				freq_BodyGyro_StdDev_of_Z_Axis  
				freq_BodyGyro_MeanFreq_of_X_Axis  
				freq_BodyGyro_MeanFreq_of_Y_Axis  
				freq_BodyGyro_MeanFreq_of_Z_Axis  
				freq_BodyAccMag_Mean  
				freq_BodyAccMag_StdDev  
				freq_BodyAccMag_MeanFreq  
				freq_BodyBodyAccJerkMag_Mean  
				freq_BodyBodyAccJerkMag_StdDev  
				freq_BodyBodyAccJerkMag_MeanFreq  
				freq_BodyBodyGyroMag_Mean  
				freq_BodyBodyGyroMag_StdDev  
				freq_BodyBodyGyroMag_MeanFreq  
				freq_BodyBodyGyroJerkMag_Mean  
				freq_BodyBodyGyroJerkMag_StdDev  
				freq_BodyBodyGyroJerkMag_MeanFreq  
Values: Numeric of type double.  
Notes: There are a total of 79 variable columns from the data source after filter for -mean and -std columns.  
```

```
Variable label: Average data of the variables. Columns names starts with prefix 'Mean_of_'.  
Variable name: 	Mean_of_time_BodyAcc_Mean_of_X_Axis  
				Mean_of_time_BodyAcc_Mean_of_Y_Axis  
				Mean_of_time_BodyAcc_Mean_of_Z_Axis  
				Mean_of_time_BodyAcc_StdDev_of_X_Axis  
				Mean_of_time_BodyAcc_StdDev_of_Y_Axis  
				Mean_of_time_BodyAcc_StdDev_of_Z_Axis  
				Mean_of_time_GravityAcc_Mean_of_X_Axis  
				Mean_of_time_GravityAcc_Mean_of_Y_Axis  
				Mean_of_time_GravityAcc_Mean_of_Z_Axis  
				Mean_of_time_GravityAcc_StdDev_of_X_Axis  
				Mean_of_time_GravityAcc_StdDev_of_Y_Axis  
				Mean_of_time_GravityAcc_StdDev_of_Z_Axis  
				Mean_of_time_BodyAccJerk_Mean_of_X_Axis  
				Mean_of_time_BodyAccJerk_Mean_of_Y_Axis  
				Mean_of_time_BodyAccJerk_Mean_of_Z_Axis  
				Mean_of_time_BodyAccJerk_StdDev_of_X_Axis  
				Mean_of_time_BodyAccJerk_StdDev_of_Y_Axis  
				Mean_of_time_BodyAccJerk_StdDev_of_Z_Axis  
				Mean_of_time_BodyGyro_Mean_of_X_Axis  
				Mean_of_time_BodyGyro_Mean_of_Y_Axis  
				Mean_of_time_BodyGyro_Mean_of_Z_Axis  
				Mean_of_time_BodyGyro_StdDev_of_X_Axis  
				Mean_of_time_BodyGyro_StdDev_of_Y_Axis  
				Mean_of_time_BodyGyro_StdDev_of_Z_Axis  
				Mean_of_time_BodyGyroJerk_Mean_of_X_Axis  
				Mean_of_time_BodyGyroJerk_Mean_of_Y_Axis  
				Mean_of_time_BodyGyroJerk_Mean_of_Z_Axis  
				Mean_of_time_BodyGyroJerk_StdDev_of_X_Axis  
				Mean_of_time_BodyGyroJerk_StdDev_of_Y_Axis  
				Mean_of_time_BodyGyroJerk_StdDev_of_Z_Axis  
				Mean_of_time_BodyAccMag_Mean  
				Mean_of_time_BodyAccMag_StdDev  
				Mean_of_time_GravityAccMag_Mean  
				Mean_of_time_GravityAccMag_StdDev  
				Mean_of_time_BodyAccJerkMag_Mean  
				Mean_of_time_BodyAccJerkMag_StdDev  
				Mean_of_time_BodyGyroMag_Mean  
				Mean_of_time_BodyGyroMag_StdDev  
				Mean_of_time_BodyGyroJerkMag_Mean  
				Mean_of_time_BodyGyroJerkMag_StdDev  
				Mean_of_freq_BodyAcc_Mean_of_X_Axis  
				Mean_of_freq_BodyAcc_Mean_of_Y_Axis  
				Mean_of_freq_BodyAcc_Mean_of_Z_Axis  
				Mean_of_freq_BodyAcc_StdDev_of_X_Axis  
				Mean_of_freq_BodyAcc_StdDev_of_Y_Axis  
				Mean_of_freq_BodyAcc_StdDev_of_Z_Axis  
				Mean_of_freq_BodyAcc_MeanFreq_of_X_Axis  
				Mean_of_freq_BodyAcc_MeanFreq_of_Y_Axis  
				Mean_of_freq_BodyAcc_MeanFreq_of_Z_Axis  
				Mean_of_freq_BodyAccJerk_Mean_of_X_Axis  
				Mean_of_freq_BodyAccJerk_Mean_of_Y_Axis  
				Mean_of_freq_BodyAccJerk_Mean_of_Z_Axis  
				Mean_of_freq_BodyAccJerk_StdDev_of_X_Axis  
				Mean_of_freq_BodyAccJerk_StdDev_of_Y_Axis  
				Mean_of_freq_BodyAccJerk_StdDev_of_Z_Axis  
				Mean_of_freq_BodyAccJerk_MeanFreq_of_X_Axis  
				Mean_of_freq_BodyAccJerk_MeanFreq_of_Y_Axis  
				Mean_of_freq_BodyAccJerk_MeanFreq_of_Z_Axis  
				Mean_of_freq_BodyGyro_Mean_of_X_Axis  
				Mean_of_freq_BodyGyro_Mean_of_Y_Axis  
				Mean_of_freq_BodyGyro_Mean_of_Z_Axis  
				Mean_of_freq_BodyGyro_StdDev_of_X_Axis  
				Mean_of_freq_BodyGyro_StdDev_of_Y_Axis  
				Mean_of_freq_BodyGyro_StdDev_of_Z_Axis  
				Mean_of_freq_BodyGyro_MeanFreq_of_X_Axis  
				Mean_of_freq_BodyGyro_MeanFreq_of_Y_Axis  
				Mean_of_freq_BodyGyro_MeanFreq_of_Z_Axis  
				Mean_of_freq_BodyAccMag_Mean  
				Mean_of_freq_BodyAccMag_StdDev  
				Mean_of_freq_BodyAccMag_MeanFreq  
				Mean_of_freq_BodyBodyAccJerkMag_Mean  
				Mean_of_freq_BodyBodyAccJerkMag_StdDev  
				Mean_of_freq_BodyBodyAccJerkMag_MeanFreq  
				Mean_of_freq_BodyBodyGyroMag_Mean  
				Mean_of_freq_BodyBodyGyroMag_StdDev  
				Mean_of_freq_BodyBodyGyroMag_MeanFreq  
				Mean_of_freq_BodyBodyGyroJerkMag_Mean  
				Mean_of_freq_BodyBodyGyroJerkMag_StdDev  
				Mean_of_freq_BodyBodyGyroJerkMag_MeanFreq 
Values: Numeric of type double.  
Notes: These columns are the average of the variables by Subject and Activity in the file W3Assignment_Mean_Data_bySubjectActivity.txt.
``` 