==================================================================
Human Activity Recognition Using Smartphones Dataset
Version 1.0
==================================================================
The tidy data set for analysis is derived from the Samsung Smartphones dataset from this link:
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

The run_analysis.R takes the datasets from the link and does the following: 
1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement.
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive variable names.
5. Creates a second, independent tidy data set with the average of each variable for each activity and each subject.

The resulting 69 variables are described below: 



1 id num 
  Record ID 
    [1,180]

2 subjectid num 
  Subject ID 
    [1,30]
    
3 activity num 
  Activity completed 
    WALKING
    WALKING_UPSTAIRS
    WALKING_DOWNSTAIRS
    SITTING
    STANDING
    LAYING
    
4 tbodyacc mean x-axis num 
  Average of the mean time-domain body acceleration signal on the x axis 
    [-1,1]

5 tbodyacc mean y-axis num 
    Average of the mean time-domain body acceleration signal on the y axis 
  [-1,1]

6 tbodyacc mean z-axis num 
  Average of the mean time-domain body acceleration signal on the z axis 
    [-1,1]

7 tbodyacc standard deviation x-axis num 
  Average of the standard deviation of time-domain body acceleration signal on the x axis 
    [-1,1]

8 tbodyacc standard deviation y-axis num 
  Average of the standard deviation of time-domain body acceleration signal on the y axis
    [-1,1]

9 tbodyacc standard deviation z-axis num 
  Average of the standard deviation of time-domain body acceleration signal on the z axis 
    [-1,1]

10 tgravityacc mean x-axis num 
  Average mean time-domain gravity acceleration signal on the x axis 
    [-1,1]

11 tgravityacc mean y-axis num 
  Average mean time-domain gravity acceleration signal on the y axis 
    [-1,1]

12 tgravityacc mean z-axis num 
  Average mean time-domain gravity acceleration signal on the z axis 
    [-1,1]

13 tgravityacc standard deviation x-axis num 
  Average standard deviation time-domain gravity acceleration signal on the x axis
    [-1,1]

14 tgravityacc standard deviation y-axis num 
  Average standard deviation time-domain gravity acceleration signal on the y axis 
    [-1,1]

15 tgravityacc standard deviation z-axis num 
  Average standard deviation time-domain gravity acceleration signal on the z axis 
    [-1,1]

16 tbodyaccjerk mean x-axis num 
  Average mean time-domain linear acceleration jerk signal on the x axis 
    [-1,1]

17 tbodyaccjerk mean y-axis num 
  Average mean time-domain linear acceleration jerk signal on the y axis 
    [-1,1]

18 tbodyaccjerk mean z-axis num 
  Average mean time-domain linear acceleration jerk signal on the z axis 
    [-1,1]

19 tbodyaccjerk standard deviation x-axis num 
  Average standard deviation time-domain linear acceleration jerk signal on the x axis 
    [-1,1]

20 tbodyaccjerk standard deviation y-axis num 
  Average standard deviation time-domain linear acceleration jerk signal on the y axis
    [-1,1]

21 tbodyaccjerk standard deviation z-axis num 
  Average standard deviation time-domain linear acceleration jerk signal on the z axis 
    [-1,1]

22 tbodygyro mean x-axis num 
  Average mean time-domain angular velocity signal on the x-axis
    [-1,1]

23 tbodygyro mean y-axis num 
  Average mean time-domain angular velocity signal on the y-axis 
    [-1,1]

24 tbodygyro mean z-axis num 
  Average mean time-domain angular velocity signal on the z-axis 
    [-1,1]

25 tbodygyro standard deviation x-axis num 
  Average standard deviation time-domain angular velocity signal on the x-axis 
    [-1,1]

26 tbodygyro standard deviation y-axis num 
  Average standard deviation time-domain angular velocity signal on the y-axis
    [-1,1]

27 tbodygyro standard deviation z-axis num 
  Average standard deviation time-domain angular velocity signal on the z-axis 
    [-1,1]

28 tbodygyrojerk mean x-axis num 
  Average mean time-domain angular velocity jerk signal on the x-axis
    [-1,1]

29 tbodygyrojerk mean y-axis num 
  Average mean time-domain angular velocity jerk signal on the y-axis 
    [-1,1]

30 tbodygyrojerk mean z-axis num 
  Average mean time-domain angular velocity jerk signal on the z-axis 
   [-1,1]

31 tbodygyrojerk standard deviation x-axis num 
  Average standard deviation time-domain angular velocity jerk signal on the x-axis 
    [-1,1]

32 tbodygyrojerk standard deviation y-axis num 
  Average standard deviation time-domain angular velocity jerk signal on the y-axis 
    [-1,1]

33 tbodygyrojerk standard deviation z-axis num 
  Average standard deviation time-domain angular velocity jerk signal on the z-axis 
    [-1,1]

34 tbodyaccmag mean num 
  Average of the mean time-domain body acceleration magnitude 
   [-1,1]

35 tbodyaccmag standard deviation num 
  Average of the standard deviation time-domain body acceleration magnitude 
    [-1,1]

36 tgravityaccmag mean num 
  Average of the mean time-domain gravity acceleration magnitude 
    [-1,1]

37 tgravityaccmag standard deviation num 
  Average of the standard deviation time-domain gravity acceleration magnitude 
    [-1,1]

38 tbodyaccjerkmag mean num 
  Average mean time-domain linear acceleration jerk signal magnitude 
    [-1,1]

39 tbodyaccjerkmag standard deviation num 
  Average standard deviation time-domain linear acceleration jerk signal magnitude
   [-1,1]

40 tbodygyromag mean num 
  Average mean time-domain angular velocity signal magnitude 
    [-1,1]

41 tbodygyromag standard deviation num 
  Average standard deviation of time-domain angular velocity signal magnitude
   [-1,1]

42 tbodygyrojerkmag mean num 
  Average mean time-domain angular velocity jerk signal magnitude 
   [-1,1]

43 tbodygyrojerkmag standard deviation num 
  Average standard deviation of time-domain angular velocity jerk signal magnitude
    [-1,1]

44 fbodyacc mean x-axis num 
  Average of the mean frequency-domain body acceleration signal on the x axis 
   [-1,1]

45 fbodyacc mean y-axis num 
  Average of the mean frequency-domain body acceleration signal on the y axis 
    [-1,1]

46 fbodyacc mean z-axis num 
  Average of the mean frequency-domain body acceleration signal on the z axis 
   [-1,1]

47 fbodyacc standard deviation x-axis num 
  Average of the standard deviation of frequency-domain body acceleration signal on the x axis 
    [-1,1]

48 fbodyacc standard deviation y-axis num
  Average of the standard deviation of frequency-domain body acceleration signal on the y axis
   [-1,1]

49 fbodyacc standard deviation z-axis num 
  Average of the standard deviation of frequency-domain body acceleration signal on the z axis
    [-1,1]

50 fbodyaccjerk mean x-axis num 
  Average mean frequency-domain linear acceleration jerk signal on the x axis 
    [-1,1]

51 fbodyaccjerk mean y-axis num 
  Average mean frequency-domain linear acceleration jerk signal on the y axis
    [-1,1]

52 fbodyaccjerk mean z-axis num 
  Average mean frequency-domain linear acceleration jerk signal on the z axis 
    [-1,1]

53 fbodyaccjerk standard deviation x-axis num 
  Average standard deviation frequency-domain linear acceleration jerk signal on the x axis
    [-1,1]

54 fbodyaccjerk standard deviation y-axis num 
  Average standard deviation frequency-domain linear acceleration jerk signal on the y axis
    [-1,1]

55 fbodyaccjerk standard deviation z-axis num 
  Average standard deviation frequency-domain linear acceleration jerk signal on the z axis
    [-1,1]

56 fbodygyro mean x-axis num 
  Average mean frequency-domain angular velocity signal on the x-axis 
    [-1,1]

57 fbodygyro mean y-axis num 
  Average mean frequency-domain angular velocity signal on the y-axis 
    [-1,1]

58 fbodygyro mean z-axis num 
  Average mean frequency-domain angular velocity signal on the z-axis 
    [-1,1]

59 fbodygyro standard deviation x-axis num 
  Average standard deviation frequency-domain angular velocity signal on the x-axis 
    [-1,1]

60 fbodygyro standard deviation y-axis num 
  Average standard deviation frequency-domain angular velocity signal on the y-axis 
    [-1,1]

61 fbodygyro standard deviation z-axis num 
  Average standard deviation frequency-domain angular velocity signal on the z-axis 
   [-1,1]

62 fbodyaccmag mean num 
  Average of the mean frequency-domain body acceleration magnitude 
    [-1,1]

63 fbodyaccmag standard deviation num 
  Average of the standard deviation frequency-domain body acceleration magnitude 
    [-1,1]

64 fbodybodyaccjerkmag mean num 
  Average mean frequency-domain linear acceleration jerk signal magnitude 
    [-1,1]

65 fbodybodyaccjerkmag standard deviation num 
  Average standard deviation frequency-domain linear acceleration jerk signal magnitude 
  [-1,1]

66 fbodybodygyromag mean num 
  Average mean frequency-domain angular velocity signal magnitude 
    [-1,1]

67 fbodybodygyromag standard deviation num 
  Average standard deviation of frequency-domain angular velocity signal magnitude
   [-1,1]

68 fbodybodygyrojerkmag mean num 
  Average mean frequency-domain angular velocity jerk signal magnitude 
    [-1,1]

69 fbodybodygyrojerkmag standard deviation num 
  Average standard deviation of frequency-domain angular velocity jerk signal magnitude
    [-1,1]
