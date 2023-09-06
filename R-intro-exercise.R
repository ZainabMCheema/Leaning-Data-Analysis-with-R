head(iris)
plot(iris$Species)
plot(iris$Petal.Length)
plot(iris$Sepal.Length)
plot(iris$Sepal.Length, iris$Petal.Length)
plot(iris)
plot(iris$Petal.Length, iris$Petal.Width,
     col="#cc0000",
     pch= 19,
     main="Iris:Petal length vs Petal width",
     xlab="Petal Length",
     ylab="Petal Width"
     )
plot(cos, 0, 2*pi)
plot(dnorm, -3, +3)
plot(dnorm, -3, +3,
     col="green",
     lwd= 3,
     main= "dnorm chart",
     xlab= "z-scores",
     ylab= "Density"
     )
library(datasets)
head(mtcars)
cylinders <-table(mtcars$cyl)
barplot(cylinders)
plot(cylinders)
hist(iris$Sepal.Length)
hist(iris$Sepal.Width)
hist(iris$Petal.Length)
hist(iris$Petal.Width)

par(mfrow = c(3, 1), mar = c(2, 4, 2, 1))

hist(iris$Petal.Width [iris$Species=='setosa'],
    xlim = c(0,3),
    breaks = 9,
    main="petal width for setosa",
    xlab="",
    col = "red"
   )

hist(iris$Petal.Width [iris$Species=='versicolor'],
     xlim = c(0,3),
     breaks = 9,
     main = "petal width for versicolor",
     xlab="",
     col="green"
     )

hist(iris$Petal.Width [iris$Species=="virginica"],
     xlim = c(0,3),
     breaks=9,
     main="petal width for virginica",
     xlab="",
     col= "blue"
     
     )

hist(mtcars$wt)
hist(mtcars$mpg)
plot(mtcars$wt, mtcars$mpg,
     pch=19,
     cex=1.5,
     col='red',
     main="MPG as function of weight",
     xlab= "weoght",
     ylab="MPG")
library(datasets)
head(lynx)
hist(lynx)


hist(lynx,
     breaks = 14,
     freq =  FALSE,
     col="blue",
     main= "annual Candian LYNX",
     xlab ="Number of LYNX"
     )
curve(dnorm(x, mean=mean(lynx), sd=sd(lynx)),
      col="red",
      lwd=2,
      add=TRUE
      )
rug(lynx, lwd=4, col="gray")
summary(iris$Species)
