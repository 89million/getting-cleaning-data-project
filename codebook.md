## Getting/Cleaning Data Project Codebook

This dataset consists of measurements taken with smartphones while participants performed 1 of 6 activities. The variables are normalized and bounded between -1 and 1. A list of variable names and their units is below. 

Raw data: 10299 observations organized by a subject's ID number and an activity code. Along with these two features are 561 measurement features from the phones' gyroscope and accelerometer. 

Processed data: The train and test data frames are loaded into R and bound by column with their respective subject and activity data frames. Train and test are then merged together by row. The file "features.txt" is used to create a character vector and applied to name the data frame variables. The data was subset by searching the feature names for matches with "mean" and "std". The original activity codes (numbered 1-6) were replaced with their matching natural language equivalents from the "activity_labels.txt" file. Those activity labels were then converted to the factor class in R. Finally the aggregate function is used to split the data by SubjectId and ActivityLabel, compute the mean and return the result in a new tidy data frame that is much smaller and more readable than the original. 

A list of variables and their units is below in the following format:
**[nth]Variable name**
**_Description/Units_**



* [1] "SubjectId"                                      	
* *Unique ID number for each of 30 subjects*
* [2] "ActivityLabel"                                   	
* *One of six activities*
* [3] "timeBodyAccelerometer-mean-X"                    	
* *Standard gravity units g*
* [4] "timeBodyAccelerometer-mean-Y"                    	
* *Standard gravity units g*
* [5] "timeBodyAccelerometer-mean-Z"                    	
* *Standard gravity units g*
* [6] "timeBodyAccelerometer-std-X"                     	
* *Standard gravity units g*
* [7] "timeBodyAccelerometer-std-Y"                     	
* *Standard gravity units g*
* [8] "timeBodyAccelerometer-std-Z"                     	
* *Standard gravity units g*
* [9] "timeGravityAccelerometer-mean-X"					
* *Standard gravity units g*                 
* [10] "timeGravityAccelerometer-mean-Y"        		 	
* *Standard gravity units g*        
* [11] "timeGravityAccelerometer-mean-Z"        			
* *Standard gravity units g*         
* [12] "timeGravityAccelerometer-std-X"        			
* *Standard gravity units g*   	       
* [13] "timeGravityAccelerometer-std-Y"        		 	
* *Standard gravity units g*         
* [14] "timeGravityAccelerometer-std-Z"        		 	
* *Standard gravity units g*         
* [15] "timeBodyAccelerometerJerk-mean-X"               	
* *Standard gravity units g* 
* [16] "timeBodyAccelerometerJerk-mean-Y"               	
* *Standard gravity units g* 
* [17] "timeBodyAccelerometerJerk-mean-Z"               	
* *Standard gravity units g* 
* [18] "timeBodyAccelerometerJerk-std-X"                	
* *Standard gravity units g* 
* [19] "timeBodyAccelerometerJerk-std-Y"                	
* *Standard gravity units g* 
* [20] "timeBodyAccelerometerJerk-std-Z"                	
* *Standard gravity units g* 
* [21] "timeBodyGyroscope-mean-X"       					
* *Radians/second*              
* [22] "timeBodyGyroscope-mean-Y"  						
* *Radians/second*                      
* [23] "timeBodyGyroscope-mean-Z"     					
* *Radians/second*                   
* [24] "timeBodyGyroscope-std-X"      				   	
* *Radians/second*                
* [25] "timeBodyGyroscope-std-Y"      				 	
* *Radians/second*                  
* [26] "timeBodyGyroscope-std-Z"     						
* *Radians/second*                    
* [27] "timeBodyGyroscopeJerk-mean-X" 					
* *Radians/second*                   
* [28] "timeBodyGyroscopeJerk-mean-Y" 				  	
* *Radians/second*                 
* [29] "timeBodyGyroscopeJerk-mean-Z" 				 	
* *Radians/second*                  
* [30] "timeBodyGyroscopeJerk-std-X" 						
* *Radians/second*                    
* [31] "timeBodyGyroscopeJerk-std-Y" 						
* *Radians/second*                    
* [32] "timeBodyGyroscopeJerk-std-Z"    					
* *Radians/second*                 
* [33] "timeBodyAccelerometerMagnitude-mean"             	
* *Standard gravity units g*
* [34] "timeBodyAccelerometerMagnitude-std"              	
* *Standard gravity units g*
* [35] "timeGravityAccelerometerMagnitude-mean"          	
* *Standard gravity units g*
* [36] "timeGravityAccelerometerMagnitude-std"           	
* *Standard gravity units g*
* [37] "timeBodyAccelerometerJerkMagnitude-mean"         	
* *Standard gravity units g*
* [38] "timeBodyAccelerometerJerkMagnitude-std"         	
* *Standard gravity units g* 
* [39] "timeBodyGyroscopeMagnitude-mean"             		
* *Radians/second*    
* [40] "timeBodyGyroscopeMagnitude-std"                	
* *Radians/second*  
* [41] "timeBodyGyroscopeJerkMagnitude-mean"           	
* *Radians/second*  
* [42] "timeBodyGyroscopeJerkMagnitude-std"             	
* *Radians/second* 
* [43] "frequencyBodyAccelerometer-mean-X"               	
* *Standard gravity units g*
* [44] "frequencyBodyAccelerometer-mean-Y"             	
* *Standard gravity units g*  
* [45] "frequencyBodyAccelerometer-mean-Z"             	
* *Standard gravity units g*  
* [46] "frequencyBodyAccelerometer-std-X"                
* *Standard gravity units g*
* [47] "frequencyBodyAccelerometer-std-Y"               	
* *Standard gravity units g* 
* [48] "frequencyBodyAccelerometer-std-Z"                	
* *Standard gravity units g*
* [49] "frequencyBodyAccelerometer-meanFreq-X"           	
* *Standard gravity units g*
* [50] "frequencyBodyAccelerometer-meanFreq-Y"           	
* *Standard gravity units g*
* [51] "frequencyBodyAccelerometer-meanFreq-Z"           	
* *Standard gravity units g*
* [52] "frequencyBodyAccelerometerJerk-mean-X"           	
* *Standard gravity units g*
* [53] "frequencyBodyAccelerometerJerk-mean-Y"          	
* *Standard gravity units g* 
* [54] "frequencyBodyAccelerometerJerk-mean-Z"          	
* *Standard gravity units g* 
* [55] "frequencyBodyAccelerometerJerk-std-X"           	
* *Standard gravity units g* 
* [56] "frequencyBodyAccelerometerJerk-std-Y"           	
* *Standard gravity units g* 
* [57] "frequencyBodyAccelerometerJerk-std-Z"            	
* *Standard gravity units g*
* [58] "frequencyBodyAccelerometerJerk-meanFreq-X"       	
* *Standard gravity units g*
* [59] "frequencyBodyAccelerometerJerk-meanFreq-Y"       	
* *Standard gravity units g*
* [60] "frequencyBodyAccelerometerJerk-meanFreq-Z"      	
* *Standard gravity units g* 
* [61] "frequencyBodyGyroscope-mean-X"         			
* *Radians/second*          
* [62] "frequencyBodyGyroscope-mean-Y"                   	
* *Radians/second*
* [63] "frequencyBodyGyroscope-mean-Z"                   	
* *Radians/second*
* [64] "frequencyBodyGyroscope-std-X"                    	
* *Radians/second*
* [65] "frequencyBodyGyroscope-std-Y"                    	
* *Radians/second*
* [66] "frequencyBodyGyroscope-std-Z"                    	
* *Radians/second*
* [67] "frequencyBodyGyroscope-meanFreq-X"               	
* *Radians/second*
* [68] "frequencyBodyGyroscope-meanFreq-Y"               	
* *Radians/second*
* [69] "frequencyBodyGyroscope-meanFreq-Z"               	
* *Radians/second*
* [70] "frequencyBodyAccelerometerMagnitude-mean"			
* *Standard gravity units g*
* [71] "frequencyBodyAccelerometerMagnitude-std"         	
* *Standard gravity units g*
* [72] "frequencyBodyAccelerometerMagnitude-meanFreq"    	
* *Standard gravity units g*
* [73] "frequencyBodyAccelerometerJerkMagnitude-mean"    	
* *Standard gravity units g*
* [74] "frequencyBodyAccelerometerJerkMagnitude-std"     	
* *Standard gravity units g*
* [75] "frequencyBodyAccelerometerJerkMagnitude-meanFreq"	
* *Standard gravity units g*
* [76] "frequencyBodyGyroscopeMagnitude-mean"            	
* *Radians/second*
* [77] "frequencyBodyGyroscopeMagnitude-std"           	
* *Radians/second*  
* [78] "frequencyBodyGyroscopeMagnitude-meanFreq"      	
* *Radians/second*  
* [79] "frequencyBodyGyroscopeJerkMagnitude-mean"        	
* *Radians/second*
* [80] "frequencyBodyGyroscopeJerkMagnitude-std"        	
* *Radians/second* 
* [81] "frequencyBodyGyroscopeJerkMagnitude-meanFreq"   	
* *Radians/second*