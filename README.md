# datacleaning
Final project from the Johns Hopkins "Getting and Cleaning Data" Coursera course
# Description
The included script, named run_analysis.R, is designed to download and
process a dataset of accelerometer data. The original dataset was hosted
at https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip.

Executing the script will attempt to download the zip archive and unzip it in the 
current working directory, creating a directory named "UCI HAR Dataset". If the
file "dataset.zip" already exists in the current working directory, the script will
skip the download. If the directory "UCI HAR Dataset" exists in the current working
directory, the script will skip the unzipping of the dataset.

Once the archive has been downloaded, the following datafiles will exist in the
"UCI HAR Dataset" subdirectory:

- 'features.txt': List of all features.

- 'activity_labels.txt': Links the class labels with their activity name.

- 'train/X_train.txt': Training set.

- 'train/y_train.txt': Training labels.

- 'test/X_test.txt': Test set.

- 'test/y_test.txt': Test labels.

- 'train/subject_train.txt': Each row identifies the subject who performed the
 activity. Its range is from 1 to 30. 

- 'test/subject_test.txt': Each row identifies the subject who performed the
 activity for each window sample. Its range is from 1 to 30.

The script will then attempt to read the data contained in these 8 files and
merge that data into a single dataset consisting of 10299 observations over 563
variables. The resulting R data frame will be associated with the R variable
named "data" in the current environment.

The script will then extract from this larger dataset, a subset of the data
consisting of the subjectID, the activity, and the columns from the original
dataset which are means or standard deviations. It will
also replace the numeric activity column with a feature column representing the
six activities that were identified in the data: WALKING, WALKING_UPSTAIRS,
WALKING_DOWNSTAIRS, SITTING, STANDING, and LAYING. The resulting data frame
will be associated with the R variable named "datams" in the current environment.

Finally, an aggregation of the "datams" data will be created, where the numeric
columns is collapsed into an average value grouped by subjectID and activity. The
resulting data will be associated with the R variable named "dataag" in the
current environment. 