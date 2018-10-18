
#Reading the census data and then removing the first 4 columns and row numbers 1, 10 and 53 and renaming the columns
census <- census[,-1:-4]
census <- census[-c(1,53,10),]
colnames(census) <- c("stateName","population","popOver18","percentOver18")

