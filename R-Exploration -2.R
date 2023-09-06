library(tidyverse)
?tidyverse
data()
?construction
dim(construction)
head(construction)
tail(construction)
str(construction)
glimpse(construction)
construction$name

attach(construction)
names(construction)
length(construction)
length(Year)
class(Year)
unique(Year)
table(construction)
table(Month)
table(Northeast)

construction %>%
  select(1 unit)

