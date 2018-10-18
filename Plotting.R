
library(ggplot2)
library(ggmap)

Area=ggplot(merged_data, aes(map_id=stateName)) + geom_map(map=US, aes(fill=area),color="black")
Area=Area + expand_limits(x=US$long, y=US$lat) + ggtitle("Area of US states") + coord_map()

murder=ggplot(merged_data, aes(map_id=stateName)) + geom_map(map=US, aes(fill=Murder),color="black")
murder=murder + expand_limits(x=US$long, y=US$lat) + ggtitle("Murder rate in US states") + coord_map