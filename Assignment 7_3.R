Create a box and whisker plot by class using mtcars dataset.


library(tidyr)
library(ggplot2)
# or `library(tidyverse)`

df<-data.frame(mtcars,row.names = NULL, stringsAsFactors = default.stringsAsFactors())
df

mtcars %>% gather() %>% head()


#Example-1

boxplot(mtcars$mpg ~ factor(mtcars$vs), main = "Boxplot of Miles/Gallon for Different Engine Types")



#Example-2

ggplot(mtcars, aes(x=factor(am),y=mpg,fill=factor(am)))+
  geom_boxplot(notch=F)+ 
  scale_x_discrete("Transmission")+
  scale_y_continuous("Miles per Gallon")+
  ggtitle("MPG by Transmission Type")

