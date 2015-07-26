# datacleaning_course
Result (R source, readme and codebook) for project/exercise in the Coursera datacleaning course   

# Prereqs
Make sure **ALL** required data files are in the working directory (just like the run_analysis.R file). Data files in a subdirectory will **NOT** be found  

If all files are in the same directory, but this is not the working directory, make sure to set the work directory using the setwd() function. 

The run_analysis.R requires the data.table package. 
Ensure to install the package before running the run_analysis.R script 

# Errors  
The script will load and process all required files and you'll notice the usual (hard) waywhen a required file is missing. 
The code has no separate (coded) error message when 1 or more files are not found.

*** 
# Processing the data files

The process consists of 5 steps:  
##### Merge the training and the test sets to create one data set.
+ Read the test related datafiles and attach the relevant subject ids and activity ids 
+ Read the train related data and attach the relevant subject ids and activity ids 
+ convert both to data.table, put in a list and concatenate 
+ read the feature labels and use them as column names (using setNames) 

##### Extracts only the measurements on the mean and standard deviation for each measurement. 
+ Select only the columns having std() or mean() in the name and add the 2 activity and subject id cols  

##### Use descriptive activity names to name the activities in the data set

+ read the activity labels and join the 2 data.tables so we can "replace" the ids with the labels 
+ remove original column and name the new one Äctivity"  

##### Appropriately labels the data set with descriptive variable names. 
+ use gsub() to replace ()- by for 
+ use gsub() to remove remanining () 
+ use gsub() to replace - by SPACE

#####  From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
+ calculate the mean for all columns by Activity, subject_ID
+ write the result using write.table (row.name=FALSE) to the required tidy dataset "result.txt" (which was uploaded)
