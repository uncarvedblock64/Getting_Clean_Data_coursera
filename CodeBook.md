# Course Project: Codebook
## Getting and Cleaning Data


### Variable Selection

Excluded Variables: 'Angle' measurements including a mean reference vector and 'Frequency Mean' measurements.  The angle measurements are not actually mean measurements at all, but use the mean references as a reference point.  The 'Frequency Mean' measurements were not included because they represent different physical significance from the mean acceleration and mean angular motion variables.  In addition, the project instructions specifically say mean and standard deviation: which matches up unambiguously with the measurements labeled mean() and std().

### Variable Naming

* Time domain ('TimeDomain') or , frequency domain ('FreqDomain') variable
* Measurements are either for the subject body ('Body') or gravity ('Gravity')
* Measurements are for linear acceleration ('LinearAccel') (X, Y, or Z) or for rotational motion ('Gyroscopic') in X, Y, or Z)
* Measurements can be 'jerk' motion or not, meaning that there is a short timeframe fluctuation in the acceleration
* Measurements can also be labled a magnitude ('Magnitude') value instead of component (X, Y, or Z)
* Measurements are given as a normalized mean ('Mean') (value between +1 and -1), or of a normalized standard deviation ('StandardDev')

###  Tidy Data Set Variables

There were 68 variables included in the tidy data set.  The first 2 represent the activity occuring during the measurement: WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, or LAYING and a subject id number.  The remaining are measured sensor data as described above in the Variable naming discussion.

1.   "Activity"  
Activity names were translated from activity number in subject_train.txt and subject_test.txt, via lookup in the included activity_labels.txt file.  There are 7 activities: walking, walking upstairs, walking downstairs, sitting, standing, or laying.  

2.   "Subject_id"  
The subject_id was given the the included y_train.txt or y_test.txt files.  Based on the study definition, the subjects from the training set and the test set were joined into a single data set.  They were assigned at random to the training and testing sets, so there is no apparent need to include that data.  The information however can be looked up in the y_train.txt and y_test.txt files if desired.  

3.   "TimeDomainBodyLinearAccel_Mean_X"  
    no3. to no68. See the explanation above in "Variable Naming".  The values are unitless and normalized between -1 and +1.  
4.   "TimeDomainBodyLinearAccel_Mean_Y"
5.   "TimeDomainBodyLinearAccel_Mean_Z"
6.   "TimeDomainBodyLinearAccel_StandardDev_X"
7.   "TimeDomainBodyLinearAccel_StandardDev_Y"
8.   "TimeDomainBodyLinearAccel_StandardDev_Z"
9.   "TimeDomainGravityLinearAccel_Mean_X"
10.  "TimeDomainGravityLinearAccel_Mean_Y"
11.  "TimeDomainGravityLinearAccel_Mean_Z"
12.  "TimeDomainGravityLinearAccel_StandardDev_X"
13.  "TimeDomainGravityLinearAccel_StandardDev_Y"
14.  "TimeDomainGravityLinearAccel_StandardDev_Z"
15.  "TimeDomainBodyLinearAccelJerk_Mean_X"
16.  "TimeDomainBodyLinearAccelJerk_Mean_Y"
17.  "TimeDomainBodyLinearAccelJerk_Mean_Z"
18.  "TimeDomainBodyLinearAccelJerk_StandardDev_X"
19.  "TimeDomainBodyLinearAccelJerk_StandardDev_Y"
20.  "TimeDomainBodyLinearAccelJerk_StandardDev_Z"
21.  "TimeDomainBodyGyroscopic_Mean_X"
22.  "TimeDomainBodyGyroscopic_Mean_Y"
23.  "TimeDomainBodyGyroscopic_Mean_Z"
24.  "TimeDomainBodyGyroscopic_StandardDev_X"
25.  "TimeDomainBodyGyroscopic_StandardDev_Y"
26.  "TimeDomainBodyGyroscopic_StandardDev_Z"
27.  "TimeDomainBodyGyroscopicJerk_Mean_X"
28.  "TimeDomainBodyGyroscopicJerk_Mean_Y"
29.  "TimeDomainBodyGyroscopicJerk_Mean_Z"
30.  "TimeDomainBodyGyroscopicJerk_StandardDev_X"
31.  "TimeDomainBodyGyroscopicJerk_StandardDev_Y"
32.  "TimeDomainBodyGyroscopicJerk_StandardDev_Z"
33.  "TimeDomainBodyLinearAccelMagnitude_Mean"
34.  "TimeDomainBodyLinearAccelMagnitude_StandardDev"
35.  "TimeDomainGravityLinearAccelMagnitude_Mean"
36.  "TimeDomainGravityLinearAccelMagnitude_StandardDev"
37.  "TimeDomainBodyLinearAccelJerkMagnitude_Mean"
38.  "TimeDomainBodyLinearAccelJerkMagnitude_StandardDev"
39.  "TimeDomainBodyGyroscopicMagnitude_Mean"
40.  "TimeDomainBodyGyroscopicMagnitude_StandardDev"
41.  "TimeDomainBodyGyroscopicJerkMagnitude_Mean"
42.  "TimeDomainBodyGyroscopicJerkMagnitude_StandardDev"
43.  "FreqDomainBodyLinearAccel_Mean_X"
44.  "FreqDomainBodyLinearAccel_Mean_Y"
45.  "FreqDomainBodyLinearAccel_Mean_Z"
46.  "FreqDomainBodyLinearAccel_StandardDev_X"
47.  "FreqDomainBodyLinearAccel_StandardDev_Y"
48.  "FreqDomainBodyLinearAccel_StandardDev_Z"
49.  "FreqDomainBodyLinearAccelJerk_Mean_X"
50.  "FreqDomainBodyLinearAccelJerk_Mean_Y"
51.  "FreqDomainBodyLinearAccelJerk_Mean_Z"
52.  "FreqDomainBodyLinearAccelJerk_StandardDev_X"
53.  "FreqDomainBodyLinearAccelJerk_StandardDev_Y"
54.  "FreqDomainBodyLinearAccelJerk_StandardDev_Z"
55.  "FreqDomainBodyGyroscopic_Mean_X"
56.  "FreqDomainBodyGyroscopic_Mean_Y"
57.  "FreqDomainBodyGyroscopic_Mean_Z"
58.  "FreqDomainBodyGyroscopic_StandardDev_X"
59.  "FreqDomainBodyGyroscopic_StandardDev_Y"
60.  "FreqDomainBodyGyroscopic_StandardDev_Z"
61.  "FreqDomainBodyLinearAccelMagnitude_Mean"
62.  "FreqDomainBodyLinearAccelMagnitude_StandardDev"
63.  "FreqDomainBodyLinearAccelJerkMagnitude_Mean"
64.  "FreqDomainBodyLinearAccelJerkMagnitude_StandardDev"
65.  "FreqDomainBodyGyroscopicMagnitude_Mean"
66.  "FreqDomainBodyGyroscopicMagnitude_StandardDev"
67.  "FreqDomainBodyGyroscopicJerkMagnitude_Mean"
68.  "FreqDomainBodyGyroscopicJerkMagnitude_StandardDev"
