### This repo consists of the course project for the Getting and Cleaning Data class from Coursera

The purpose of this project is to obtain a dataset of measurements made using the accelerometer and gyroscope from Samsung smartphones while participants performed 1 of 6 physical activities. This data is from the Human Activity Recognition Using Smartphones Data Set (located here: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones#). The run_analysis script in this repo requires the data to be present in your working directory. A subset of the columns of the data is then taken and finally it is reshaped into a smaller and more readable format. 

Included in this repo is an R script titled "run_analysis.R" which will load the measurement data into R. Once the data is loaded the script will merge the training and testing data, subset the data using only measurements of mean and standard deviation, convert variable names and activity codes into a more readable format and then write a new, concise tidy data table to your working directory.

Along with the R script there is also a codebook with more specific descriptions of the variables and transformations performed and an example of the tidy data as a .txt file.  

You can run this script with the command `source("run_analysis.R")` from the R console. This assumes that the run_analysis file and the Human Activity Recognition dataset are located in your working directory. 