
#Storing USArrests into a new variable "arrests"
arrests <- (USArrests)
arrests <- cbind(rownames(arrests),arrests)
colnames(arrests) <- c("stateName")

#Merge the two dataframes
merged_data <- merge(merge, arrests)
#Renaming all the columns of the data frame
colnames(merged_data) <- c("stateName","population","popOver18","percentOver18","Murder","Assault","UrbanPop","Rape")
