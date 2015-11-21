# read the data into R
xtest <- read.table("./Coursera_data/UCI HAR dataset/test/X_test.txt")
subjtest <- read.table("./Coursera_data/UCI HAR dataset/test/subject_test.txt")
ytest <- read.table("./Coursera_data/UCI HAR dataset/test/y_test.txt")
xtrain <- read.table("./Coursera_data/UCI HAR dataset/train/X_train.txt")
subjtrain <- read.table("./Coursera_data/UCI HAR dataset/train/subject_train.txt")
ytrain <- read.table("./Coursera_data/UCI HAR dataset/train/y_train.txt")
feats <- read.table("./Coursera_data/UCI HAR dataset/features.txt", 
                    stringsAsFactors = FALSE)

test <- cbind(xtest, subjtest, ytest) # join all the test data by row
train <- cbind(xtrain, subjtrain, ytrain) # join train data by row
## Merge the train and test sets into a single data frame
mergedData <- rbind(train, test)

# apply variable names to each column
feats <- c(feats$V2, "SubjectId", "ActivityLabel")
names(mergedData) <- feats

# Part 2 pull the columns which have "mean" or "std" somewhere in the name
mean_col <- grep(x = names(mergedData), pattern = "mean")
std_col <- grep(x = names(mergedData), pattern = "std")
mean_std <- sort(c(mean_col, std_col)) 
# create a new df with only the "mean" and "std" columns
mergedData <- mergedData[,c(mean_std, 562:563)]

# Part 3, replace activity codes with their english language labels from the
# text file included in the project data
labels <- read.table("./Coursera_data/UCI HAR dataset/activity_labels.txt", 
                     stringsAsFactors = FALSE)
# convert labels vector from int to char to use gsub function
mergedData$ActivityLabel <- as.character(mergedData$ActivityLabel)
# run a for loop over labels vector replace int codes with english labels
for (i in seq_len(6)) {
      mergedData$ActivityLabel <- gsub(pattern=as.character(i), replacement=labels$V2[i], 
                                        x=mergedData$ActivityLabel)
}
mergedData$ActivityLabel <- as.factor(mergedData$ActivityLabel)

# Part 4, Appropriately labels the data set with descriptive variable names. 
# Remove abbreviations and parens and use lower  camelCase to increase readability
pattern <- c("tB", "tG", "Acc", "fB", "Mag", "BodyBody", "\\()", "Gyro")
replaceWith <- c("timeB","timeG", "Accelerometer", "frequencyB", "Magnitude", "Body", "", "Gyroscope") 
for ( i in seq_len(length(pattern))) {
      names(mergedData) <- gsub(pattern=pattern[i], replacement=replaceWith[i], 
                                 x=names(mergedData))
}


# Part 5 From the data set in step 4, creates a second, independent tidy 
# data set with the average of each variable for each activity and each subject.

# Use the aggregate function to split the data by subjectid and activity, compute
# the mean for each and return a tidy data frame. 
TidyData <- aggregate(.~SubjectId + ActivityLabel, data=mergedData, FUN = "mean")
TidyData <- TidyData[order(TidyData$SubjectId,TidyData$ActivityLabel),]
# write TidyData into a new file
write.table(TidyData, file = "./Coursera_data/TidyData.txt", row.names = FALSE)





