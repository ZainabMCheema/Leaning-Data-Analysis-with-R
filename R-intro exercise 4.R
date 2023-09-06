require(pacman)  # Gives a confirmation message.
library(pacman)
pacman::p_load(pacman, dplyr, GGally, ggplot2, ggthemes, 
               ggvis, httr, lubridate, plotly, rio, rmarkdown, shiny, 
               stringr, tidyr)

library(rio)
rio_csv <- import("D:/R-Language/mbb.csv")
head(rio_csv)
rio_txt <- import("D:/R-Language/mbb.txt")
head(rio_txt)

rio_xlsx <- import("D:/R-Language/mbb.xlsx")
head(rio_xlsx)

View(rio_csv)

trends.csv <- read.csv("D:/R-Language/mbb.csv", header = TRUE)



