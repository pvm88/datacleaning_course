# run_analysis.R
# You should create one R script called run_analysis.R that does the following. 
# Merges the training and the test sets to create one data set.
# Extracts only the measurements on the mean and standard deviation for each measurement. 
# Uses descriptive activity names to name the activities in the data set
# Appropriately labels the data set with descriptive variable names. 
# From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

# assume all data files in current directory, otherwise change and uncomment the next line  
# setwd("I:/Datacleaning/project")

require(data.table)

# Read the test related datafiles and attach the relevant subject ids and activity ids 
test.data <- read.table("X_test.txt") 
test.subject <- read.table("subject_test.txt")
colnames(test.subject) <- "subject_Id"
test.test <- read.table("y_test.txt")
colnames(test.test) <- "activity_Id"
test.data <- cbind(test.data,test.subject,test.test)

# Read the train related data and attach the relevant subject ids and activity ids 
train.data <- read.table("X_train.txt")
train.subject <- read.table("subject_train.txt")
colnames(train.subject) <- "subject_Id"
train.test <- read.table("y_train.txt")
colnames(train.test) <- "activity_Id"
train.data <- cbind(train.data,train.subject,train.test)

# we need them to be data.table of course 
setDT(train.data)
setDT(test.data)
DTs <- list(test.data,train.data)
# concatenate the data,table's 
all.data <- rbindlist(DTs) 

# readthe feature labels and use them as column names 
features <- fread("features.txt")
feat.names<- features[,V2]
feat.names <- c(feat.names,"subject_Id","activity_Id")

setNames(all.data,feat.names)

# Select only the columns having std() or mean() in the name and add the activity and subject id cols  
selected_features <- grep("std\\(\\)|mean\\(\\)|_Id",perl=T,feat.names)
all.data.selected <- all.data[,selected_features,with=F]

# make the names get the 


replaced_1 <- gsub("\\(\\)-"," for ",names(all.data.selected),perl=T)
replaced_2 <- gsub("\\(\\)","",replaced_1,perl=T)
replaced_3 <- gsub("-"," ",replaced_2,perl=T)

# read the activity labels and join so we can "replace" the ids with the labels   
activity.data <- read.table("activity_labels.txt") 
setDT(activity.data)
setkey(activity.data,"V1")
setkey(all.data.selected,"activity_Id")
all.data.selected <- all.data.selected[activity.data]
all.data.selected[,activity_Id := NULL]
setnames(all.data.selected, "V2", "Activity")  
# calculate the mean for all columns by Activity, subject_ID
out.dt <- all.data.selected[, lapply(.SD,mean), by="Activity,subject_Id"]

write.table(out.dt,file="result.txt",row.name=FALSE ) 
