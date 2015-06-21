XTest <- read.table("C:/Users/ksara_000/datasciencecoursera/GetCleanData/UCIHARDataset/test/X_test.txt")
yTest <- read.table("C:/Users/ksara_000/datasciencecoursera/GetCleanData/UCIHARDataset/test/y_test.txt")
XTrain <- read.table("C:/Users/ksara_000/datasciencecoursera/GetCleanData/UCIHARDataset/train/X_Train.txt")
yTrain <- read.table("C:/Users/ksara_000/datasciencecoursera/GetCleanData/UCIHARDataset/train/y_Train.txt")

Test <- cbind(XTest, yTest)
Train <- cbind(XTrain, yTrain)

mergedTestTrain <- rbind(Test, Train)


varSelection <- NULL

features <- read.table("C:/Users/ksara_000/datasciencecoursera/GetCleanData/UCIHARDataset/features.txt")
meanIndices <- grep("mean", as.character(features$V2))
stdIndices <- grep("std", as.character(features$V2))
varSelection <- selectMeanStd(meanIndices, stdIndices, mergedTestTrain, features, activityLabels)


activityLabels <- read.table("C:/Users/ksara_000/datasciencecoursera/GetCleanData/UCIHARDataset/activity_labels.txt")
varSelection <- nameActivities(varSelection, ActivityLabels)


subjectTest <- read.table("C:/Users/ksara_000/datasciencecoursera/GetCleanData/UCIHARDataset/test/subject_test.txt")
subjectTrain <- read.table("C:/Users/ksara_000/datasciencecoursera/GetCleanData/UCIHARDataset/train/subject_train.txt")

mergedSubject <- rbind(subjectTest, subjectTrain)
varSelection<-cbind(varSelection, mergedSubject)
colnames(varSelection)[81] <- "Subject"


finalFile <- resultMeans(varSelection)

write.table(finalFile, "C:/Users/ksara_000/datasciencecoursera/GetCleanData/result.txt", row.names=FALSE)




