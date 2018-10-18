
# Course Number: IST 687
# HW 7 - Visualize Median Income on a Map Submitted by Deepak Sharma SU ID: 707679399
# Assignment Due on Wednesday October 18 and Submitted on Wednesday October 18.
# Portions of this code came from Introduction to Data Science but the comments are all original.

#Reading the census data and then removing the first 4 columns and row numbers 1, 10 and 53 and renaming the columns
census <- census[,-1:-4]
census <- census[-c(1,53,10),]
colnames(census) <- c("stateName","population","popOver18","percentOver18")

