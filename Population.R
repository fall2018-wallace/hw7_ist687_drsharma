
#Loading the libraries in order to visualize the data
library(ggplot2)
library(ggmap)

#Using map_data function
US=map_data("state")

#Calculting the population of every state and respresenting it by a circle at the center of the state and the larger the circle means the larger the population of that particular state
pop_large=ggplot(merged_data, aes(map_id=stateName)) + geom_map(map=US, aes(fill=Murder),color="black")
pop_large=pop_large + expand_limits(x=US$long, y=US$lat)

pop_large= pop_large + geom_point(aes(x=merged_data$longitude, y=merged_data$latitude, size=merged_data$population)) + coord_map()
pop_large=pop_large + ggtitle("Population")
