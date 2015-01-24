# Code Book

The raw dataset includes a README.txt which details the original data.  As part of this project, that original dataset has been refined to generate a new, more specific dataset.

The final dataset is a subset of the raw dataset, keeping only the results from mean() and std() operations.

The final dataset adds in the subject and activity columns to the original dataset.

The final dataset replaces the activity numbers with the actual activity names.

The final dataset calculates the average of each of the original dataset features.  There are 30 participants with 6 activities each, resulting in a dataset of 180 rows.

## Columns
The column names are derived from the features of the original dataset.  Those features are a collection of accelerometer and gyroscope (angular velocity) 3-axial signals timeAccelerationXYZ and timeANgularVelocityXYZ.
 These time domain signals were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (timeBodyAccelerationXYZ and timeGravityAccelerationXYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (timeBodyAccelerationJerkXYZ and timeBodyAngularVelocityJerkXYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (timeBodyAccelerationMagnitude, timeGravityAccelerationMagnitude, timeBodyAccelerationJerkMagnitude, timeBodyAngularVelocityMagnitude, timeBodyAngularVelocityJerkMagnitude).

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing frequencyBodyAccelerationXYZ, frequencyBodyAccelerationJerkXYZ, frequencyBodyAngularVelocityXYZ, frequencyBodyAccelerationJerkMagnitude, frequencyBodyAngularVelocityMagnitude, frequencyBodyAngularVelocityJerkMagnitude.

These signals were used to estimate variables of the feature vector for each pattern:  
'XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

The final column names are listed in the following table.

Column Name|
-----------|
Subject|
Activity|
timeBodyAccelerationMeanX|
timeBodyAccelerationMeanY|
timeBodyAccelerationMeanZ|
timeBodyAccelerationStdX|
timeBodyAccelerationStdY|
timeBodyAccelerationStdZ|
timeGravityAccelerationMeanX|
timeGravityAccelerationMeanY|
timeGravityAccelerationMeanZ|
timeGravityAccelerationStdX|
timeGravityAccelerationStdY|
timeGravityAccelerationStdZ|
timeBodyAccelerationJerkMeanX|
timeBodyAccelerationJerkMeanY|
timeBodyAccelerationJerkMeanZ|
timeBodyAccelerationJerkStdX|
timeBodyAccelerationJerkStdY|
timeBodyAccelerationJerkStdZ|
timeBodyAngularVelocityMeanX|
timeBodyAngularVelocityMeanY|
timeBodyAngularVelocityMeanZ|
timeBodyAngularVelocityStdX|
timeBodyAngularVelocityStdY|
timeBodyAngularVelocityStdZ|
timeBodyAngularVelocityJerkMeanX|
timeBodyAngularVelocityJerkMeanY|
timeBodyAngularVelocityJerkMeanZ|
timeBodyAngularVelocityJerkStdX|
timeBodyAngularVelocityJerkStdY|
timeBodyAngularVelocityJerkStdZ|
timeBodyAccelerationMagnitudeMean|
timeBodyAccelerationMagnitudeStd|
timeGravityAccelerationMagnitudeMean|
timeGravityAccelerationMagnitudeStd|
timeBodyAccelerationJerkMagnitudeMean|
timeBodyAccelerationJerkMagnitudeStd|
timeBodyAngularVelocityMagnitudeMean|
timeBodyAngularVelocityMagnitudeStd|
timeBodyAngularVelocityJerkMagnitudeMean|
timeBodyAngularVelocityJerkMagnitudeStd|
frequencyBodyAccelerationMeanX|
frequencyBodyAccelerationMeanY|
frequencyBodyAccelerationMeanZ|
frequencyBodyAccelerationStdX|
frequencyBodyAccelerationStdY|
frequencyBodyAccelerationStdZ|
frequencyBodyAccelerationJerkMeanX|
frequencyBodyAccelerationJerkMeanY|
frequencyBodyAccelerationJerkMeanZ|
frequencyBodyAccelerationJerkStdX|
frequencyBodyAccelerationJerkStdY|
frequencyBodyAccelerationJerkStdZ|
frequencyBodyAngularVelocityMeanX|
frequencyBodyAngularVelocityMeanY|
frequencyBodyAngularVelocityMeanZ|
frequencyBodyAngularVelocityStdX|
frequencyBodyAngularVelocityStdY|
frequencyBodyAngularVelocityStdZ|
frequencyBodyAccelerationMagnitudeMean|
frequencyBodyAccelerationMagnitudeStd|
frequencyBodyBodyAccelerationJerkMagnitudeMean|
frequencyBodyBodyAccelerationJerkMagnitudeStd|
frequencyBodyBodyAngularVelocityMagnitudeMean|
frequencyBodyBodyAngularVelocityMagnitudeStd|
frequencyBodyBodyAngularVelocityJerkMagnitudeMean|
frequencyBodyBodyAngularVelocityJerkMagnitudeStd|
