

The data in this dataset represents an experiment carried out with a group of
 30 volunteers within an age bracket of 19-48 years. Each person performed
 six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING,
 STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist.
 Using its embedded accelerometer and gyroscope, the 3-axial linear 
 acceleration and 3-axial angular velocity readings were captured at a constant
 rate of 50Hz. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying
 noise filters and then sampled in fixed-width sliding windows of 2.56 sec and
 50% overlap (128 readings/window). The sensor acceleration signal, which has
 gravitational and body motion components, was separated using a Butterworth
 low-pass filter into body acceleration and gravity. The gravitational force
 is assumed to have only low frequency components, therefore a filter with 0.3
 Hz cutoff frequency was used. From each window, a vector of features was
 obtained by calculating variables from the time and frequency domain.

These readings were used to estimate variables of the feature vector for each
 pattern, where '-XYZ' is used to denote 3-axial signals in the X, Y and Z
 directions and occur as separate variables in the dataset.

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
meanFreq(): Weighted average of the frequency components
skewness(): skewness of the frequency domain signal 
kurtosis(): kurtosis of the frequency domain signal 
bandsEnergy(): Energy of a frequency interval within the 64 bins of the FFT
angle(): Angle between to vectors.

Additional vectors were obtained by averaging the signals in a signal window
 sample. These are:

gravityMean
tBodyAccMean
tBodyAccJerkMean
tBodyGyroMean
tBodyGyroJerkMean

Three separate CookBook files are included in this distribution, which lists
the column indexes and associated variable names for each of the datasets
produced by this script. These files are:

CookBookData.txt
CookBookDataMS.txt
CookBookDataAG.txt

