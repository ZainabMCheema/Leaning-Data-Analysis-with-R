install.packages("tidyverse")
library(tidyverse)
data()
?starwars
dim(starwars)
str(starwars)
glimpse(starwars)
View(starwars)
head(starwars)
tail(starwars)
starwars$name
attach(starwars)
names(starwars)
length(starwars)
class(hair_color)
length(hair_color)
unique(hair_color)

table(hair_color)
sort(table(hair_color))

View(sort(table(hair_color), decreasing = TRUE))
barplot(sort(table(hair_color), decreasing = TRUE))

starwars %>%
  select(hair_color)%>%
  count(hair_color) %>%
  arrange(desc(n)) %>%
  View()

View(starwars[is.na(hair_color), ])
class(height)
length(height)
summary(height)
boxplot(height)
hist(height)
