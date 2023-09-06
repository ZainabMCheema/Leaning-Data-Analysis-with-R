library(datasets)
head(iris)
summary(iris$Species)
summary(iris$Sepal.Length)
summary(iris)

pacman::p_load(psych)
describe(iris$Sepal.Length)
describe(iris)


hist(iris$Sepal.Length)
summary(iris)
hist(iris$Petal.Length[iris$Petal.Length< 2],
     main = "Sepal length < 2",
     breaks = 10) 
hist(iris$Petal.Length[iris$Species=="virginica" &
       iris$Petal.Length < 5.5],
     main = "petal length :short virginica"
       )
s.iris <-iris[iris$Species=="setosa", ]


v.iris <-iris[iris$Species=="virginica", ]
summary(s.iris$Petal.Length)
hist(s.iris$Petal.Length)
 
