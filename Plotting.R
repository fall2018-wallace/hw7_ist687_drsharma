
library(ggplot2)
library(ggmap)

state.area
state.name

merged_data$area= state.area

statecenter= data.frame(state.center)
View(statecenter)
merged_data$latitude=statecenter$y
merged_data$longitude=statecenter$x

merged_data$stateName=tolower(merged_data$stateName)
US=map_data("state")
