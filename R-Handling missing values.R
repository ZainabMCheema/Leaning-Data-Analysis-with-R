install.packages("RCurl")
library(RCurl)
dhfr <-read.csv(text = getURL("https://raw.githubusercontent.com/dataprofessor/data/master/dhfr.csv"))
View(dhfr)
sum(is.na(dhfr))

#if data is clean, introduce the random na values in dataset
#we are crearting random function to create the na

na.gen <- function(data, n){
  i <-1
  while (i< n+1){
    indx1 <-sample(1:nrow(data), 1)
    indx2 <-sample(1:ncol(data), 1)
    data[indx1, indx2] <- NA
    i=i+1
  }
  return(data)
}
dhfr <-dhfr[, -1]
dhfr<- na.gen(dhfr, 100)

sum(is.na(dhfr))  
colSums(is.na(dhfr))

View(colSums(is.na(dhfr)))

#list the rows with missing values
missingdatarow <- dhfr[!complete.cases(dhfr), ]
sum(is.na(missingdatarow))
View(missingdatarow)
# handling the missing data
clean.data <-na.omit(dhfr)
sum(is.na(clean.data))

#impute the mean value  in place of NA
dhfr.impute <- dhfr
for (i in which(sapply(dhfr.impute, is.numeric))){
  dhfr.impute[is.na(dhfr.impute[, i]), i] <- mean(dhfr.impute[, i], na.rm=TRUE )
}
sum(is.na(dhfr.impute))

dhfr.impute2 <- dhfr
for (i in which(sapply(dhfr.impute2, is.numeric))){
  dhfr.impute2[is.na(dhfr.impute2[, i]), i] <- median(dhfr.impute2[, i], na.rm=TRUE)
}
sum(is.na(dhfr.impute2))
