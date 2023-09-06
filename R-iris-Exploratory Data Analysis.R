library(datasets)
data("iris")
iris <-datasets::iris
View(iris)
head(iris)
tail(iris)

summary(iris)
summary(iris$Sepal.Length)
#to check if there are any missing values

sum(is.na(iris))
#skimr for detail statistic
install.packages("skimr")
library(skimr)
skim(iris)

#group data by species to perform statistics
iris %>% 
  dplyr::group_by(Species) %>% 
  skim()
plot(iris)
plot(iris, col="red")
plot(iris$Sepal.Length, iris$Sepal.Width)     
