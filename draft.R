install.packages("geojsonio")
install.packages("rgdal")
install.packages("rgeos")
install.packages("V8")
install.packages("jqr")
install.packages("geojson")
install.packages("RJSONIO")
install.packages("reshape2")
install.packages('plotly')
library(RJSONIO)
library(geojsonio)
library(RCurl)
library('ggplot2')
library(jsonlite)

data <- fromJSON(("https://gist.githubusercontent.com/WingFlier/2de15089b2b386c71ea0b70acbfbf0fa/raw/0d40a4d3879fd6c3337de91c4b08c1c040f567c8/draft.json"))
data2 <- fromJSON(("https://raw.githubusercontent.com/WingFlier/InfovisProject/master/file.json"))

platform <- data[[5]][[9]]
ggplot(data=data, aes(x=platform, fill=platform)) + geom_bar() +   
  theme_classic(base_size = 15) 
  
status <- data[[5]][[1]]
ggplot(data=data, aes(x=platform, fill=status)) + geom_bar() +  theme_classic(base_size = 15)

ip <- data2[[5]][[29]]
unique(ip)
#ggplot(data2, aes(x=ip, fill=ip)) + geom_bar() +  theme_classic(base_size = 15) +
#  coord_polar()

uris <- data2[[5]][[13]]
uris
check<- unique(uris)
ggplot(data2, aes(x=uris, color=uris)) + geom_bar()