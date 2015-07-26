* Code book *

The *Human Activity Recognition Using Smartphones Dataset* data is derived from data files present [here](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones#) This codebook liberally makes use of the texts found there:

## Raw data
See as described above for a full description. 
Summary 

The original (accelerometer and gyroscope) sensor signals were pre-processed and split in body acceleration and gravity. 

Each originla record had: 
+ Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
+ Triaxial Angular velocity from the gyroscope. 
+ A 561-feature vector with time and frequency domain variables. 
+ Its activity label. 
+ An identifier of the subject who carried out the experiment.

The data reflects results of experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. 

## Processed data: 
The dataset for this codebook was derived from the above datasets and has the following groups of data 

### Identifiers
+ Activity
Values are: WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING
+ subject_Id
Identifies the subjects/persons being measured (1-30)

### Measurements (averaged per subject/activity)

Only measurements reflecting a mean or std ere taken into consideration.  
Each of the resulting values was calculated by taking the average/mean over **all** values for **1** specific subject and activity 
**Note** 
+ The original values were all normalized and bounded within [-1,1].
+ Units used for the accelerations (total and body) are 'g's 
+ The gyroscope units are rad/seg.
+ the mean was calculated for all types (std or mean) of values 

This leaves us with he following 66 columns   

 "tBodyAcc mean for X"       "tBodyAcc mean for Y"      
 "tBodyAcc mean for Z"       "tBodyAcc std for X"       
 "tBodyAcc std for Y"        "tBodyAcc std for Z"       
 "tGravityAcc mean for X"    "tGravityAcc mean for Y"   
 "tGravityAcc mean for Z"    "tGravityAcc std for X"    
 "tGravityAcc std for Y"     "tGravityAcc std for Z"    
 "tBodyAccJerk mean for X"   "tBodyAccJerk mean for Y"  
 "tBodyAccJerk mean for Z"   "tBodyAccJerk std for X"   
 "tBodyAccJerk std for Y"    "tBodyAccJerk std for Z"   
 "tBodyGyro mean for X"      "tBodyGyro mean for Y"     
 "tBodyGyro mean for Z"      "tBodyGyro std for X"      
 "tBodyGyro std for Y"       "tBodyGyro std for Z"      
"tBodyGyroJerk mean for X"  "tBodyGyroJerk mean for Y" 
 "tBodyGyroJerk mean for Z"  "tBodyGyroJerk std for X"  
 "tBodyGyroJerk std for Y"   "tBodyGyroJerk std for Z"  
 "tBodyAccMag mean"          "tBodyAccMag std"          
 "tGravityAccMag mean"       "tGravityAccMag std"       
 "tBodyAccJerkMag mean"      "tBodyAccJerkMag std"      
 "tBodyGyroMag mean"         "tBodyGyroMag std"         
 "tBodyGyroJerkMag mean"     "tBodyGyroJerkMag std"     
 "fBodyAcc mean for X"       "fBodyAcc mean for Y"      
 "fBodyAcc mean for Z"       "fBodyAcc std for X"       
 "fBodyAcc std for Y"        "fBodyAcc std for Z"       
 "fBodyAccJerk mean for X"   "fBodyAccJerk mean for Y"  
 "fBodyAccJerk mean for Z"   "fBodyAccJerk std for X"   
 "fBodyAccJerk std for Y"    "fBodyAccJerk std for Z"   
 "fBodyGyro mean for X"      "fBodyGyro mean for Y"     
 "fBodyGyro mean for Z"      "fBodyGyro std for X"      
 "fBodyGyro std for Y"       "fBodyGyro std for Z"      
 "fBodyAccMag mean"          "fBodyAccMag std"          
 "fBodyBodyAccJerkMag mean"  "fBodyBodyAccJerkMag std"  
 "fBodyBodyGyroMag mean"     "fBodyBodyGyroMag std"     
 "fBodyBodyGyroJerkMag mean" "fBodyBodyGyroJerkMag std" 

License:
========
The original dataset was published here [1] 

[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. A Public Domain Dataset for Human Activity Recognition Using Smartphones. 21th European Symposium on Artificial Neural Networks, Computational Intelligence and Machine Learning, ESANN 2013. Bruges, Belgium 24-26 April 2013. 
