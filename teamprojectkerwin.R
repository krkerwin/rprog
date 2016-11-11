## Please note that by default the googleVis plot command
## will open a browser window and requires Internet
## connection to display the visualisation.

## Regions examples
## The regions style fills entire regions (typically countries) with
## colors corresponding to the values that you assign

install.packages('googlvis', dependencies = TRUE)
library(googleVis)  # for working with Google Chart Tools APIA

#C:\Users\Kathleen\new R folder\455\team project
setwd("C:/Users/Kathleen/new R folder/455/team project")

#my.data.frame <- read.csv("regionaldataset.csv", header = TRUE)
my.data.frame2001 <- read.csv("regionaldataset2001.csv", header = TRUE)
my.data.frame2005 <- read.csv("regionaldataset2005.csv", header = TRUE)
my.data.frame2011 <- read.csv("regionaldataset2011.csv", header = TRUE)
my.data.frame2013 <- read.csv("regionaldataset2013.csv", header = TRUE)
head(my.data.frame)
#year  region percent policy
#1 2001     USA      47   2001
#2 2001  Greece      50   2001

#2001## Place two charts next to each other
#```{r gvisMergeExample, results='asis', echo=FALSE}
#Geo <- gvisGeoChart(my.data.frame2001, locationvar='region', colorvar='percent',"policy",
#                    options=list(height=500, width=350,hAxis="{title:'height (in)'}"))
#Tbl <- gvisTable(my.data.frame2001, options=list(height=500, width=350,hAxis="{title:'height (in)'}"))
#plot(gvisMerge(Geo, Tbl, horizontal=TRUE, main = "this chart"))

#``````
##############################################################
#2001-2005## Place two charts next to each other
```{r gvisMergeExample, results='asis', echo=FALSE}
Geo2001 <- gvisGeoChart(my.data.frame2001, locationvar='region', colorvar='percent',"policy",
                    options=list(height=500, width=350))
Geo2005 <- gvisGeoChart(my.data.frame2005, locationvar='region', colorvar='percent',"policy",
                    options=list(height=500, width=350))
plot(gvisMerge(Geo2001, Geo2005, horizontal=TRUE))

``````

##############################################################
#2001-2005## Place two charts next to each other
```{r gvisMergeExample, results='asis', echo=FALSE}
Geo2011 <- gvisGeoChart(my.data.frame2011, locationvar='region', colorvar='percent',"policy",
                        options=list(height=500, width=350))
Geo2013 <- gvisGeoChart(my.data.frame2013, locationvar='region', colorvar='percent',"policy",
                        options=list(height=500, width=350))
plot(gvisMerge(Geo2011, Geo2013, horizontal=TRUE))

``````



