==================================================================

This dataset has been obtained from the reshaping of the following dataset :

Human Activity Recognition Using Smartphones Dataset
Version 1.0
 
Reference:
[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012
This dataset is distributed AS-IS and no responsibility implied or explicit can be addressed to the authors or their institutions for its use or misuse. Any commercial use is prohibited.
Jorge L. Reyes-Ortiz, Alessandro Ghio, Luca Oneto, Davide Anguita. November 2012.

==================================================================

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, one captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. 

==================================================================

This dataset comes  with the present README file, describing dataset and variables, a run_analysis.R frile, which contains the script used to obtained reqhaped data, and finally the dataset itself, called (tidydata.txt) 

Variables in this dataset:

SubjectId: the identifier of the subject who carried out the experiment.
Activity: activity performed (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING)
"Time-domain_Body-Accelerometer_std_Z"                 "Time-domain_Gravity-Accelerometer_std_X"              "Time-domain_Gravity-Accelerometer_std_Y"              "Time-domain_Gravity-Accelerometer_std_Z"             
 [9] "Time-domain_Body-AccelerometerJerk_std_X"             "Time-domain_Body-AccelerometerJerk_std_Y"             "Time-domain_Body-AccelerometerJerk_std_Z"             "Time-domain_Body-Gyroscope__std_X"                   
[13] "Time-domain_Body-Gyroscope__std_Y"                    "Time-domain_Body-Gyroscope__std_Z"                    "Time-domain_Body-Gyroscope_Jerk_std_X"                "Time-domain_Body-Gyroscope_Jerk_std_Y"               
[17] "Time-domain_Body-Gyroscope_Jerk_std_Z"                "Time-domain_Body-AccelerometerMagnitude_std"          "Time-domain_Gravity-AccelerometerMagnitude_std"       "Time-domain_Body-AccelerometerJerkMagnitude_std"     
[21] "Time-domain_Body-Gyroscope_Magnitude_std"             "Time-domain_Body-Gyroscope_JerkMagnitude_std"         "Frequency-domain_Body-Accelerometer_std_X"            "Frequency-domain_Body-Accelerometer_std_Y"           
[25] "Frequency-domain_Body-Accelerometer_std_Z"            "Frequency-domain_Body-AccelerometerJerk_std_X"        "Frequency-domain_Body-AccelerometerJerk_std_Y"        "Frequency-domain_Body-AccelerometerJerk_std_Z"       
[29] "Frequency-domain_Body-Gyroscope__std_X"               "Frequency-domain_Body-Gyroscope__std_Y"               "Frequency-domain_Body-Gyroscope__std_Z"               "Frequency-domain_Body-AccelerometerMagnitude_std"    
[33] "Frequency-domain_Body-AccelerometerJerkMagnitude_std" "Frequency-domain_Body-Gyroscope_Magnitude_std"        "Frequency-domain_Body-Gyroscope_JerkMagnitude_std"   

Notes: 
======
- Features are normalized and bounded within [-1,1].
- Each feature vector is a row on the text file.
