The codebook describes the variables in the final tidy data.

-Original data:
      -The origianl data was obtained from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip               
      -The data is described as "Human Activity Recognition database built from the recordings of 30 subjects performing activities of daily living (ADL) while carrying a waist-mounted smartphone with embedded inertial sensors."
      -The experiments involved a group of 30 volunteers. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz were captured.
      -For more information, you can check this website: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 

-Variables of the original data:
      -A description of the variables in the original dataset can be found in the "features_info.txt" file, as quoted below:
      "The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

tBodyAcc-XYZ
tGravityAcc-XYZ
tBodyAccJerk-XYZ
tBodyGyro-XYZ
tBodyGyroJerk-XYZ
tBodyAccMag
tGravityAccMag
tBodyAccJerkMag
tBodyGyroMag
tBodyGyroJerkMag
fBodyAcc-XYZ
fBodyAccJerk-XYZ
fBodyGyro-XYZ
fBodyAccMag
fBodyAccJerkMag
fBodyGyroMag
fBodyGyroJerkMag

The set of variables that were estimated from these signals are: 

mean(): Mean value
std(): Standard deviation
mad(): Median absolute deviation 
max(): Largest value in array
min(): Smallest value in array
sma(): Signal magnitude area
energy(): Energy measure. Sum of the squares divided by the number of values. 
iqr(): Interquartile range 
entropy(): Signal entropy
arCoeff(): Autorregresion coefficients with Burg order equal to 4
correlation(): correlation coefficient between two signals
maxInds(): index of the frequency component with largest magnitude
meanFreq(): Weighted average of the frequency components to obtain a mean frequency
skewness(): skewness of the frequency domain signal 
kurtosis(): kurtosis of the frequency domain signal 
bandsEnergy(): Energy of a frequency interval within the 64 bins of the FFT of each window.
angle(): Angle between to vectors.

Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle() variable:

gravityMean
tBodyAccMean
tBodyAccJerkMean
tBodyGyroMean
tBodyGyroJerkMean"

-Transformation performed to clean up the data:
      -Among the 561 feature vectors, the ones of mean and standard deviation measurements are of interest, thus only 66 feature vectors are extracted. Together with the activity and subject id vectors, there are 68 vectors.
      -To create a tidy data set, for each activity and each subject, the average of each variable is calculated. Thus there are 180 records in the tidy dataset (6 activities *30 subjects).
    
-Final variables in the tidy dataset:
    "activity" 
    "subject.id" 
    "time.body.acceleration.mean.X.average" 
    "time.body.acceleration.mean.Y.average" 
    "time.body.acceleration.mean.Z.average" 
    "time.body.acceleration.std.X.average" 
    "time.body.acceleration.std.Y.average" 
    "time.body.acceleration.std.Z.average" 
    "time.gravity.acceleration.mean.X.average" 
    "time.gravity.acceleration.mean.Y.average" 
    "time.gravity.acceleration.mean.Z.average" 
    "time.gravity.acceleration.std.X.average" 
    "time.gravity.acceleration.std.Y.average" 
    "time.gravity.acceleration.std.Z.average" 
    "time.body.acceleration.jerk.mean.X.average" 
    "time.body.acceleration.jerk.mean.Y.average" 
    "time.body.acceleration.jerk.mean.Z.average" 
    "time.body.acceleration.jerk.std.X.average" 
    "time.body.acceleration.jerk.std.Y.average" 
    "time.body.acceleration.jerk.std.Z.average" 
    "time.body.gyro.mean.X.average" 
    "time.body.gyro.mean.Y.average" 
    "time.body.gyro.mean.Z.average" 
    "time.body.gyro.std.X.average" 
    "time.body.gyro.std.Y.average" 
    "time.body.gyro.std.Z.average" 
    "time.body.gyro.jerk.mean.X.average" 
    "time.body.gyro.jerk.mean.Y.average" 
    "time.body.gyro.jerk.mean.Z.average" 
    "time.body.gyro.jerk.std.X.average" 
    "time.body.gyro.jerk.std.Y.average" 
    "time.body.gyro.jerk.std.Z.average" 
    "time.body.acceleration.magnitude.mean.average" 
    "time.body.acceleration.magnitude.std.average" 
    "time.gravity.acceleration.magnitude.mean.average" 
    "time.gravity.acceleration.magnitude.std.average" 
    "time.body.acceleration.jerk.magnitude.mean.average" 
    "time.body.acceleration.jerk.magnitude.std.average" 
    "time.body.gyro.magnitude.mean.average" 
    "time.body.gyro.magnitude.std.average" 
    "time.body.gyro.jerk.magnitude.mean.average" 
    "time.body.gyro.jerk.magnitude.std.average" 
    "freq.body.acceleration.mean.X.average" 
    "freq.body.acceleration.mean.Y.average" 
    "freq.body.acceleration.mean.Z.average" 
    "freq.body.acceleration.std.X.average" 
    "freq.body.acceleration.std.Y.average" 
    "freq.body.acceleration.std.Z.average" 
    "freq.body.acceleration.jerk.mean.X.average" 
    "freq.body.acceleration.jerk.mean.Y.average" 
    "freq.body.acceleration.jerk.mean.Z.average" 
    "freq.body.acceleration.jerk.std.X.average" 
    "freq.body.acceleration.jerk.std.Y.average" 
    "freq.body.acceleration.jerk.std.Z.average" 
    "freq.body.gyro.mean.X.average" 
    "freq.body.gyro.mean.Y.average" 
    "freq.body.gyro.mean.Z.average" 
    "freq.body.gyro.std.X.average" 
    "freq.body.gyro.std.Y.average" 
    "freq.body.gyro.std.Z.average" 
    "freq.body.acceleration.magnitude.mean.average" 
    rage" "freq.body.body.acceleration.jerk.magnitude.std.average" 
    "freq.body.body.gyro.magnitude.mean.average" 
    "freq.body.body.gyro.magnitude.std.average" 
    "freq.body.body.gyro.jerk.magnitude.mean.average" 
    "freq.body.body.gyro.jerk.magnitude.std.average"
