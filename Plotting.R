
#Loading the libraries in order to visualize the data
library(ggplot2)
library(ggmap)

US=map_data("state")

#Calculating the area of the US States and displaying it through the map with the help of a particular color code
Area=ggplot(merged_data, aes(map_id=stateName)) + geom_map(map=US, aes(fill=area),color="black")
Area=Area + expand_limits(x=US$long, y=US$lat) + ggtitle("Area of US states") + coord_map()

#Calculating the murder rate in the US and displaying it through the map with the help of a particular color code
murder=ggplot(merged_data, aes(map_id=stateName)) + geom_map(map=US, aes(fill=Murder),color="black")
murder=murder + expand_limits(x=US$long, y=US$lat) + ggtitle("Murder rate in US states") + coord_map()
