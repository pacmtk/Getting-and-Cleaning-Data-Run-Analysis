The following shows the old names and new names separated by a  ",".


"tBodyAcc-mean()-X",      "Time_Body_Accel_Mean_X"
"tBodyAcc-mean()-Y",      "Time_Body_Accel_Mean_Y"
"tBodyAcc-mean()-Z",      "Time_Body_Accel_Mean_Z"
"tBodyAcc-std()-X",       "Time_Body_Accel_Std_Dev_X"
"tBodyAcc-std()-Y",       "Time_Body_Accel_Std_Dev_Y"
"tBodyAcc-std()-Z",       "Time_Body_Accel_Std_Dev_Z"
"tGravityAcc-mean()-X","Time_Gravity_Accel_Mean_X"
"tGravityAcc-mean()-Y","Time_Gravity_Accel_Mean_Y"
"tGravityAcc-mean()-Z","Time_Gravity_Accel_Mean_Z"
"tGravityAcc-std()-X","Time_Gravity_Accel_Std_Dev_X"
"tGravityAcc-std()-Y","Time_Gravity_Accl_Std_Dev_Y"
"tGravityAcc-std()-Z","Time_Gravity_Accel_Std_Dev_Z"
"tBodyAccJerk-mean()-X","Time_Body_Accel_Jerk_Mean_X"
"tBodyAccJerk-mean()-Y","Time_Body_Accel_Jerk_Mean_Y"
"tBodyAccJerk-mean()-Z","Time_Body_Accel_Jerk_Mean_Z"
"tBodyAccJerk-std()-X","Time_Body_Accel_Jerk_Std_Dev_X"
"tBodyAccJerk-std()-Y","Time_Body_Accel_Jerk_Std_Dev_Y"
"tBodyAccJerk-std()-Z","Time_Body_Accel_Jerk_Std_Dev_Z"
"tBodyGyro-mean()-X","Time_Body_Gyro_Mean_X"
"tBodyGyro-mean()-Y","Time_Body_Gyro_Mean_Y"
"tBodyGyro-mean()-Z","Time_Body_Gyro_Mean_Z"
"tBodyGyro-std()-X","Time_Body_Gyro_Std_Dev_X"
"tBodyGyro-std()-Y","Time_Body_Gyro_Std_Dev_Y"
"tBodyGyro-std()-Z","Time_Body_Gyro_Std_Dev_Z"
"tBodyGyroJerk-mean()-X","Time_Body_Gyro_Jerk_Mean_X"
"tBodyGyroJerk-mean()-Y","Time_Body_Gyro_Jerk_Mean_Y"
"tBodyGyroJerk-mean()-Z","Time_Body_Gyro_Jerk_Mean_Z"
"tBodyGyroJerk-std()-X","Time_Body_Gyro_Jerk_Std_Dev_X"
"tBodyGyroJerk-std()-Y","Time_Body_Gyro_Jerk_Std_Dev_Y"
"tBodyGyroJerk-std()-Z","Time_Body_Gyro_Jerk_Std_Dev_Z"
"tBodyAccMag-mean()","Time_Body_Accel_Mag_Mean"
"tBodyAccMag-std()","Time_Body_Accel_Mag_Std_Dev"
"tGravityAccMag-mean()","Time_Gravity_Accel_Mag_Mean"
"tGravityAccMag-std()","Time_Gravity_Accel_Mag_Std_Dev"
"tBodyAccJerkMag-mean()","Time_Body_Accel_Jerk_Mag_Mean"
"tBodyAccJerkMag-std()","Time_Body_Accel_Jerk_Mag_Std_Dev"
"tBodyGyroMag-mean()","Time_Body_Gyro_Mag_Mean"
"tBodyGyroMag-std()","Time_Body_Gyro_Mag_Std_Dev"
"tBodyGyroJerkMag-mean()","time_Body_Gyro_Jerk_Mean"
"tBodyGyroJerkMag-std()","Time_Body_Gyro_Jerk_Mag_Std_Dev"
"angle(tBodyAccJerkMean),gravityMean)","angle(tBodyAccJerkMean),gravityMean)"
"angle(tBodyGyroMean,gravityMean)","angle(tBodyGyroMean,gravityMean)"
"angle(tBodyGyroJerkMean,gravityMean)","angle(tBodyGyroJerkMean,gravityMean)"
"angle(X,gravityMean)","Angle_X_Gravity_Mean"
"angle(Y,gravityMean)","Angle_Y_Gravity_Mean"
"angle(Z,gravityMean)","Angle_Z_Gravity_Mean"

run_analysis.R requires the data files be loaded locally.  measurement_names.R is also required to be run a
nd is sourced in run_analysis.R.  run_analysis.R creates a new dataset called "data0" which is a compilation 
of the test and train data sets, where each row/observation in the original test or train data constitutes a 
new row/observation in data0.  Only the desired mean and standard deviation measurements were included in data0.  
Subjects were left as numbers 1-30, but activities were factorized and replaced with character string describing 
activity.

average_data provides a mean of all values of each variable for a given subject and activity.
