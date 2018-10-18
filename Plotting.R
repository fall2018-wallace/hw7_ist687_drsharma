
Area=ggplot(merged_data, aes(map_id=stateName)) + geom_map(map=US, aes(fill=area),color="black")
Area=Area + expand_limits(x=US$long, y=US$lat) + ggtitle("Area of US states") + coord_map()
