nameActivities <- function(varSelection, activityLabels) {

	varSelection <- cbind(varSelection, mergedTestTrain[,562])
	colnames(varSelection)[80] <- "ActivityLabel"

	i <- NULL

#	varSelection <- merge(varSelection, activityLabels, by.x = "ActivityLabel", by.y = "V1", all=FALSE)
	for (i in 1:nrow(varSelection)) {
		
		if (varSelection[i,80] == "1")	{
			varSelection[i, 80] <- ""
			varSelection[i,80] <- "WALKING"
		}
		else if (varSelection[i,80] == "2")  {
			varSelection[i, 80] <- ""
			varSelection[i,80] <- "WALKING_UPSTAIRS"
		}
		else if (varSelection[i,80] == "3")  {
			varSelection[i, 80] <- ""
			varSelection[i,80] <- "WALKING_DOWNSTAIRS"
		}
		else if (varSelection[i,80] == "4")  {
			varSelection[i, 80] <- ""
			varSelection[i,80] <- "SITTING"
		}
		else if (varSelection[i,80] == "5")  {
			varSelection[i, 80] <- ""
			varSelection[i,80] <- "STANDING"
		}
		else if (varSelection[i,80] == "6")  {
			varSelection[i, 80] <- ""
			varSelection[i,80] <- "LAYING"
		}
	}
	varSelection
}