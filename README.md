# Getting-and-Cleaning-Data-Run-Analysis
# This script requires the UCI HAR Dataset to be loaded into a local directory.  The Run_Analysis.R script reads the data from 
# the UCI HAR Dataset, and then for both the "test" and "train" cases, combines the actual acceleration measurments with the 
# respective subjects (#s 1-30) and activity (Walking, Walking_upstairs, Walking_downstairs, Standing, Sitting, and Laying).
# This "Tidy" data set includes only mean and standard deviation measurements of the time domain, which includes 46 variables,
# and three final variables, "Subject", "Activity", and "Type" (type refers to origination of observation in either the test
# case or train case.  Between the test and train cases there are 10299 observations.

# run_analysis.R requires the script "measrument_names.R" which is simply the script where descriptive names are substituted
# for the origianl variable names.

# run_analysis.R also performs the last step of the project and produces the average of each variable among all observations 
# for a given variable and subject.  This dataset "average_data" returns 180 observations for the 49 variables.
