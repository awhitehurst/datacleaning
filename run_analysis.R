#
# run_analysis.R
#
# This script downloads and tidys-up a dataset of acelerometer readings
# from subjects utilizing a Samsung Galaxy S smartphone. At the successful
# conclusion of this script, three datasets are available in R variables
# as follows:
#
# data: the entire dataset of readings, which is a merger of both test and
#       training data for each subject and each associated activity (10299
#       observations of 563 variables)
#
# datams: a subset of the original dataset containing only variables with
#         the mean or standard deviations of each reading (10299 observations
#         of 81 variables)
#
# dataag: a subset of the datams dataset where the average of each set of
#         readings is calculated, grouped by subject and activity (180
#         observations of 81 variables)
#
if (!file.exists("dataset.zip")) {
  print("downloading file")
  download.file(
    "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip",
    "dataset.zip"
  )
}
if (file.exists("dataset.zip") & !file.exists("UCI HAR Dataset")) {
  print("unzipping archive")
  unzip(zipfile = "dataset.zip", exdir = ".")
}
if (file.exists("UCI HAR Dataset")) {
  print("reading training data")
  x_train <- read.table("UCI HAR Dataset/train/X_train.txt")
  y_train <- read.table("UCI HAR Dataset/train/y_train.txt")
  s_train <- read.table("UCI HAR Dataset/train/subject_train.txt")
  print("reading test data")
  x_test <- read.table("UCI HAR Dataset/test/X_test.txt")
  y_test <- read.table("UCI HAR Dataset/test/y_test.txt")
  s_test <- read.table("UCI HAR Dataset/test/subject_test.txt")
  features <- read.table("UCI HAR Dataset/features.txt")
  activities <- read.table("UCI HAR Dataset/activity_labels.txt")
  print("merging data")
  colnames(x_train) <- features[, 2]
  colnames(x_test) <- features[, 2]
  colnames(y_train) <- "activityID"
  colnames(y_test) <- "activityID"
  colnames(s_train) <- "subjectID"
  colnames(s_test) <- "subjectID"
  colnames(activities) <- c("activityID", "activity")
  data <-
    rbind(cbind(s_train, y_train, x_train),
          cbind(s_test, y_test, x_test))
  print("creating subsets")
  datams <-
    data[, grepl("activityID|subjectID|-mean|-std", colnames(data))]
  datams <- merge(datams, activities, by = "activityID")
  datams <- datams[, c(2, 82, 3:81)]
  dataag <- aggregate(. ~ subjectID + activity, datams, mean)
  print("cleaning environment")
  remove(x_train)
  remove(x_test)
  remove(y_train)
  remove(y_test)
  remove(s_train)
  remove(s_test)
  remove(activities)
  remove(features)
}
