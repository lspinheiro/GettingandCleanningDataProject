### Original data:

Source : https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

Description : http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones


### Data Transformation Steps

Following data transformations are carried out by the run_analysis.R script.


In the original folder and for each of the training and test datasets: Read the files containing the data, and the information about the variables. After all the tables contaning the datasets, the names of the variables and the identification of the subjects are read, they are transformed in the following sequence.

1. The train and test datasets have their variables named
2. The train and test datasets are merged
3. Variables contaning the number of the activities and subjectes are added to the data
4. A factor variable contaning the name of the activies is created and merged with the data
5. The raw tables are removed to save memory
6. A subset of the mean, standard deviations and mean frequencias is taken.
7. The names os the variables are transformed to increasy readability
8. A data frame contaning the transformed tidy data in created
9. A new data frame contaning the averages of the transformed tidy data in created


All the data used was derived from sources mentioned in the "Original data" section of this document. Part of the description below has been taken from the original data description.

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag).

And  Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals).

Refer to the original "Readme.txt" for more information.

The set of variables that were estimated from these signals are:

mean: Mean value.
std: Standard deviation.
meanfreq: Mean Frequency.

#### Data Columns

1. "activity"                            
2. "subject"                             
3. "tbodyaccMeanx"                       
4. "tbodyaccMeany"                       
5. "tbodyaccMeanz"                       
6. "tbodyaccStdx"                        
7. "tbodyaccStdy"                        
8. "tbodyaccStdz"                        
9. "tgravityaccMeanx"                    
10. "tgravityaccMeany"                    
11. "tgravityaccMeanz"                    
12. "tgravityaccStdx"                     
13. "tgravityaccStdy"                     
14. "tgravityaccStdz"                     
15. "tbodyaccjerkMeanx"                   
16. "tbodyaccjerkMeany"                   
17. "tbodyaccjerkMeanz"                   
18. "tbodyaccjerkStdx"                    
19. "tbodyaccjerkStdy"                    
20. "tbodyaccjerkStdz"                    
21. "tbodygyroMeanx"                      
22. "tbodygyroMeany"                      
23. "tbodygyroMeanz"                      
24. "tbodygyroStdx"                       
25. "tbodygyroStdy"                       
26. "tbodygyroStdz"                       
27. "tbodygyrojerkMeanx"                  
28. "tbodygyrojerkMeany"                  
29. "tbodygyrojerkMeanz"                  
30. "tbodygyrojerkStdx"                   
31. "tbodygyrojerkStdy"                   
32. "tbodygyrojerkStdz"                   
33. "tbodyaccmag.mean"                    
34. "tbodyaccmag.std"                     
35. "tgravityaccmag.mean"                 
36. "tgravityaccmag.std"                  
37. "tbodyaccjerkmag.mean"                
38. "tbodyaccjerkmag.std"                 
39. "tbodygyromag.mean"                   
40. "tbodygyromag.std"                    
41. "tbodygyrojerkmag.mean"               
42. "tbodygyrojerkmag.std"                
43. "fbodyaccMeanx"                       
44. "fbodyaccMeany"                       
45. "fbodyaccMeanz"                       
46. "fbodyaccStdx"                        
47. "fbodyaccStdy"                        
48. "fbodyaccStdz"                        
49. "fbodyacc.meanfreq.x"                 
50. "fbodyacc.meanfreq.y"                 
51. "fbodyacc.meanfreq.z"                 
52. "fbodyaccjerkMeanx"                   
53. "fbodyaccjerkMeany"                   
54. "fbodyaccjerkMeanz"                   
55. "fbodyaccjerkStdx"                    
56. "fbodyaccjerkStdy"                    
57. "fbodyaccjerkStdz"                    
58. "fbodyaccjerk.meanfreq.x"             
59. "fbodyaccjerk.meanfreq.y"             
60. "fbodyaccjerk.meanfreq.z"             
61. "fbodygyroMeanx"                      
62. "fbodygyroMeany"                      
63. "fbodygyroMeanz"                      
64. "fbodygyroStdx"                       
65. "fbodygyroStdy"                       
66. "fbodygyroStdz"                       
67. "fbodygyro.meanfreq.x"                
68. "fbodygyro.meanfreq.y"                
69. "fbodygyro.meanfreq.z"                
70. "fbodyaccmag.mean"                    
71. "fbodyaccmag.std"                     
72. "fbodyaccmag.meanfreq"                
73. "fbodybodyaccjerkmag.mean"            
74. "fbodybodyaccjerkmag.std"             
75. "fbodybodyaccjerkmag.meanfreq"        
76. "fbodybodygyromag.mean"               
77. "fbodybodygyromag.std"                
78. "fbodybodygyromag.meanfreq"           
79. "fbodybodygyrojerkmag.mean"           
80. "fbodybodygyrojerkmag.std"            
81. "fbodybodygyrojerkmag.meanfreq"       
82. "angle(tbodyaccmean,gravity)"         
83. "angle(tbodyaccjerkmean),gravitymean)"
84. "angle(tbodygyromean,gravitymean)"    
85. "angle(tbodygyrojerkmean,gravitymean)"
86. "angle(x,gravitymean)"                
87. "angle(y,gravitymean)"                
88. "angle(z,gravitymean)" 

