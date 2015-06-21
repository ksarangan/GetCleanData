This is a CodeBook for the Course Project result.txt file.

Variables in the File:

1) ActivityLabel
  Values:
    WALKING
    WALKING_UPSTAIRS
    WALKING_DOWNSTAIRS 
    SITTING
    STANDING
    LAYING

2) Subject
  numeric: 1 2 3 4 5 6 7 8 9 10
          11 12 13 14 15 16 17 18 19 20
          21 22 23 24 25 26 27 28 29 30

3) variable
  Names of variables on which mean was calculated.
  The different measurements basically.
  
4) mean
  Mean values corresponding to the variable calculated
  by ActivityLabel and Subject.
  
The data for the result.txt file was obtained by
combining the Test data containing individual measurements 
for the various variables and their activity labels with Train data containing
identical variables.

The variable measurements which were based on mean or std were then
obtained and assigned their meaningful names and placed
in a new dataset.

The numeric code for the activity of a particular observation
was then updated to a character label specifying the activity.

The subject data was then read in for both testing and training.
this data was then combined and appended to our working dataset.
The Subject column was then renamed as "Subject".

Finally, the means for each column(variable) were computed
by ActivityLabel and Subject.  This result was written out
into a text file named result.txt.  The structure of the 
data is above.




