README FOR COURSE PROJECT for Getting and Cleaning Data Course

This project includes 4 scripts.  The main script called run_analysis.R 
is the only one that needs to be called.  It calls the other 3 scripts.
The names of the other scripts in order of operation are:  selectMeanStd,
nameActivites, resultMeans.

The work done by run_analysis.R is as follows:

1) Reading in the X_test.txt file into an object XTest.
2) Reading in the y_test.txt file into an object yTest.
3) Reading in the X_Train.txt file into an object XTrain.
4) Reading in the y_Train.txt file into an object yTrain.

5) Column binding XTest to yTest into an object Test.
6) Column binding XTrain to yTrain into an object Train.
NOTE: XTest and XTrain have the data about the measurements taken in the experiment
for the Testing and Training.
yTest and yTrain have the data about the activity level in which these measurements
were recorded for each observation.

7) Row binding the Test and Train objects into an object called mergedTestTrain.

8) Sets an object called varSelection to NULL.

9) Reads the file features.txt into an object called features.
This contains the names of the variables in the mergedTestTrain dataset.
(The names of the columns)

10) Finds the variables with variable names which have mean in them.
11) Finds the variables with variable names which have std in them.
12) Calls the function selectMeanStd(selectMeanStd.R) which extracts mean and std variables
from the dataset and names the columns according to the data it represents.

13) Reads the file activity_labels.txt into an object called activityLabels.
14) Calls the function nameActivities(nameActivities.R) which renames the observation for variable
ActivityLabel from numeric to the corresponding name.

15) Reads the file subject_test.txt into an object called subjectTest.
16) Reads the file subject_train.txt into an object called subjectTrain.
NOTE: These are the subject ids of the study for the observations in the 
dataset after labeling Activities in the corresponding order.

17) Row binds subjectTest and subjectTrain to obtain all testing and training
subject data into one dataset called mergedSubject.
18) Columns binds mergedSubject to the complete dataset(varSelection).
19) Renames the Subject column binded as "Subject".

20) Calls a function resultMeans(resultMeans.R) which calculates the means of all the
variables in the dataset grouped by ActivityLabel and Subject.

21) Writes the resulting object to a file called result.txt in the home directory.






