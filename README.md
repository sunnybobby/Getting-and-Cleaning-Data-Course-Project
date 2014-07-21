Getting-and-Cleaning-Data-Course-Project
========================================
##**Overview**
The purpose of the project is to prepare a tidy data that can be used for later analysis by cleaning the dataset from the web. The original data was obtained from [http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones]

Included in this repo are:
  - run_analysis.R:the script for producing the tidy dataset
  - tidy_data.txt:the tidy dataset
  - Codebook.md:specific description of the tidy data file contents
 
- Before cleaning the data, the original data is downloaded from [https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip] and unzipped in the current working directory.

##**How the run_analysis.R script works**
1. Read the necessary text files in the original data sets, and merge the training and test data into one data set.
2. Extract the columns with mean and standard deviation measurements, and include the "activity" and "subject.id" variables in the new data set.
3. The activity measurements are converted from 1-6 to descriptive names (WALKING;WALKING_UPSTAIRS;WALKING_DOWNSTAIRS;SITTING;STANDING;LAYING)
4. The 66 features variables are renamed to be more descriptive and readable. 
5. An independent tidy data set with the average of each variable for each activity and each subject is created with the name "tidy_data.txt".

