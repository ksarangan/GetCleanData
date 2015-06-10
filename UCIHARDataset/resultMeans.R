resultMeans <- function(varSelection) {

	melted <- melt(varSelection, id.vars=c("ActivityLabel", "Subject"))
	allMeans <- ddply(melted, c("ActivityLabel", "Subject", "variable"), summarise, mean = mean(as.numeric(as.character(value))))

	allMeans

}

