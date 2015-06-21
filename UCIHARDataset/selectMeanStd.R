selectMeanStd <- function(meanIndices, stdIndices, mergedTestTrain, features, activityLabels) {
		

		Index <- NULL
            ColName <- NULL
		colnames(mergedTestTrain)[562] <- "ActivityLabel"
		for (i in 1:length(meanIndices)) {
			Index <- c(Index, paste("V", meanIndices[i], collapse="", sep=""))
			ColName <- c(ColName, as.character(features$V2[meanIndices[i]]))
		}
		for (j in 1:length(stdIndices)) {
			Index <- c(Index, paste("V", stdIndices[j], collapse="", sep=""))
			ColName <- c(ColName, as.character(features$V2[stdIndices[j]]))
		}

		varSelection = NULL


		for (k in 1:length(Index)) {
		
			for (m in 1:ncol(mergedTestTrain)){

				if (colnames(mergedTestTrain)[m] == as.character(Index[k])){
					varSelection<-cbind(varSelection,mergedTestTrain[,m])
					colnames(varSelection)[k] <- ColName[k]

				}
			}
			
		}

			
				
		varSelection

		
}
