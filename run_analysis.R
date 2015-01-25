# This script has to run inside of the directory "UCI HAR Dataset/"

library(dplyr)

# Load data into R
features <- read.table("./features.txt")
activity_labels <- read.table("./activity_labels.txt")
subject_train <- read.table("./train/subject_train.txt")
subject_test <- read.table("./test/subject_test.txt")
X_train <- read.table("./train/X_train.txt")
X_test <- read.table("./test/X_test.txt")
y_train <- read.table("./train/y_train.txt")
y_test <- read.table("./test/y_test.txt")

# Step 1: Merges the training and the test sets to create one data set.
names(subject_test) <- "Subject_id" -> names(subject_train)
names(y_test) <- "Activity" -> names(y_train)
cleaned_features <- gsub("[)(]", "",				#removes '(' and ')'
			     gsub("-", "_", features[, 2])	#replaces '-' with '_'
			     )
# the result of cleaned features is a character vector of the same length as features[,2]
names(X_test) <- cleaned_features ->names(X_train)
dataset <- rbind(
      cbind(subject_train,y_train,X_train),
      cbind(subject_test,y_test,X_test)
)

# Step 2: Extracts only the measurements on the mean and standard deviation for
# each measurement. 
# Create logical index vector for the desired measurements
extracted_measurements <- (grepl("(std|mean|Subject_id|Activity)",names(dataset)) &
			  !grepl("(Freq|angle)",names(dataset)))
dataset <- dataset[,extracted_measurements]
# Step 3: Uses descriptive activity names to name the activities in the data set
rows_dataset <- nrow(dataset)
for (i in 1:rows_dataset) {
	dataset[i,2] <- as.character(activity_labels[dataset[i,2],2])
}


# Step 4: Appropriately labels the data set with descriptive variable names. 
names(dataset) %>% gsub("^t", "TimeDomain", .) %>%
		   gsub("^f", "FreqDomain", .) %>%
		   gsub("BodyBody", "Body", .) %>%
		   gsub("Acc", "LinearAccel", .) %>%
		   gsub("Gyro", "Gyroscopic", .) %>%
		   gsub("Mag", "Magnitude", .) %>%
		   gsub("mean", "Mean", .) %>%
		   gsub("std", "StandardDev", .) -> names(dataset)

# Step 5: From the data set in step 4, creates a second, independent tidy data
# set with the average of each variable for each activity and each subject.
grouped_dataset <- group_by(dataset, Activity, Subject_id)
tidydataset <- grouped_dataset %>% summarise_each(funs(mean))

# Write Tidy Data Set to file
write.table(tidydataset, file = "tidydataset.txt", row.names=FALSE)
