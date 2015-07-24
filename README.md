# Coursera Data Science 
# Getting and Cleaning Data 

# Readme 
___
The assignment was to collect, work with and clean a data set. The R Script combines data from 8 files into one data set. 2 files are written to the working directory, only the file `W3Assignment_Mean_Data_bySubjectActivity.txt` is required for the peer review. 

The R Script does not use any other packages. The R Script is created and tested on Windows 7 32bit RStudio portable version 0.99.442 running on R portable version 3.2.1. 

The R Script reads the source files, transform them and generates 2 tab delimited txt files into the working directory. The folder 'UCI HAR Dataset' must be in the working directory extracted from the source. 

___
Files in folder:  
1. README.md  
2. CodeBook.md  
3. run_analysis.R  
4. W3Assignment_Merged_Data_All.txt  
5. W3Assignment_Mean_Data_bySubjectActivity.txt   

___
### Instructions
Download the R Script run_analysis.R from the repo. Load it into your R and run the script. Error will occur if it is not able to find the files in the directory 'UCI HAR Dataset'. The script will write 2 tab delimited text files to the working directory. 

Refer to section below on the run_analysis.R script. The transformation steps are detailed in the CodeBook.md file. 

___
### run_analysis.R 
R Script reads the source files, transform them and write 2 files to the working directory. During runtime, messages is written to the screen indicating the stage of processing.  

- Loading all the data files
- Processing data files
- Files will be written to <work dir>
- Writing W3Assignment_Merged_Data_All.txt
- Writing W3Assignment_Mean_Data_bySubjectActivity.txt

___
### CodeBook.md 
Code Book of Assignment detailing the data, transformation and variables in the tidy data set. Source data is not explained, refer to source site for detail explanation on the data source.

___
### W3Assignment_Merged_Data_All.txt

The merged tidy data set from the 8 source files. Only the Mean and Standard Deviation columns are selected. The variable columns are cleaned up and the Activity column is descriptive. Data is sorted by SubjectID and Activity for easy reference. It has a total of 81 columns; SubjectID, Activity and 79 variable columns. 

___
### W3Assignment_Mean_Data_bySubjectActivity.txt

This file has 81 columns; SubjectID, Activity and 79 variable columns. The 79 variable columns are Mean of the variables grouped by SubjectID and Activity. The column names describes the Mean variables. Data is sorted by SubjectID and Activity for easy reference. 

___