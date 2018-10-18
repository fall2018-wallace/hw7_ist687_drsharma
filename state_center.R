
#Using the libraries ggplot2 and ggmap to visualize the data
library(ggplot2)
library(ggmap)

#Getting the areas and nams of the states in US
state.area
state.name

#Merging the state areas to the data frame
merged_data$area= state.area

statecenter= data.frame(state.center)
#Merging the locations of the states to the data frame
merged_data$latitude=statecenter$y
merged_data$longitude=statecenter$x

#Converting the Upper case alphabets to lower cas in the stateName column of the data frame "merged_data"
merged_data$stateName=tolower(merged_data$stateName)
US=map_data("state")
