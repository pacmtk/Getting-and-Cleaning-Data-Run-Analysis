# load libraries
library(dplyr)

# set working drive
setwd("/Users/michaelkingen/Desktop/GetAndCleanData/Project/UCI HAR Dataset")

activity_labels <- read.table("activity_labels.txt")  #index numeral to activity relation
features <- read.table("features.txt") #index numeral to measurement relation

setwd("./test")

# read / combine / name all test data
subject_test <- read.table("subject_test.txt", colClasses = "numeric") #numeral to test_subject relation 2947x1
names(subject_test) <- "Subject"
X_test <- read.table("X_test.txt") #data frame - 2947x561
names(X_test) <- features[,2]
y_test0 <- read.table("y_test.txt", colClasses = "numeric") #numeral to activity relation - 2947x1
y_test1 <- as.vector(y_test0[,1])
y_test2 <- factor(y_test1, labels = activity_labels[,2])
y_test <- as.data.frame(y_test2)
names(y_test) <- "Activity"

# back-out and then enter "train" directory
setwd("../")
setwd("./train")

# read all "train" data
subject_train <- read.table("subject_train.txt", colClasses = "numeric") #numeral to train_subject relation 7352x1
names(subject_train) <- "Subject"
X_train <- read.table("X_train.txt") #data frame - 7352x561
names(X_train) <- features[,2]
y_train0 <- read.table("y_train.txt", colClasses = "numeric") #train labels - 7352x1
y_train1 <- as.vector(y_train0[,1])
y_train2 <- factor(y_train1, labels = activity_labels[,2])
y_train <- as.data.frame(y_train2)
names(y_train) <- "Activity"

# extraction of desired columns (mean and standard deviation values) & combine
var_extract <- c(1:6, 41:46, 81:86, 121:126, 161:166, 201:202, 214:215,
                 227:228, 240:241, 253:254, 556:561)

# applying extraction colums to test and train data sets
X_test1 <- X_test[,var_extract]; X_train1 <- X_train[,var_extract]

# create a new column that maintains original data-set origin
X_test1$type <- as.factor("test"); names(X_test1$type) <- "Type"
X_train1$type <- as.factor("train"); names(X_train1$type) <- "Type"

# combining data into single test and train data frames
X_test2 <- cbind(subject_test, y_test, X_test1) #subject, activity, data, type
X_train2 <- cbind(subject_train, y_train, X_train1) #subject, activity, data, type

#merge train and test data sets
data0 <- rbind(X_test2, X_train2)

#source R code where names are generated
setwd("../"); setwd("../"); setwd("../")
source("measurement_names.R")

#apply names to data frame
names(data0) <- new_names
data0 <- arrange(data0, Subject, Activity)

#Create a second, independent, tidy data set with the average of each 
#variable for each activity and each subject.

average_data <- data.frame() # create empty data set for for loop
total_sub <- length(unique(data0$Subject)) #total 30 subject
total_act <- length(unique(data0$Activity)) #total 6 activities
act <- c("WALKING", "WALKING_UPSTAIRS", "WALKING_DOWNSTAIRS", "SITTING", "STANDING", "LAYING")
sub <- c(1:total_sub)

#the filter for-loop, that creates averages for each condition
for (i in 1:total_sub) {
        for (j in 1:total_act) {
                cond <- filter(data0, Activity == act[j], Subject == sub[i])
                cond_avg <- colMeans(cond[,3:48])
                cond_avg0 <- as.data.frame(cond_avg)
                cond_avg1 <- cbind(sub[i], act[j], t(cond_avg0))
                average_data <-rbind(average_data, cond_avg1)               
        }
}

# cleaning up names
names(average_data) <- c(new_names[1:48])