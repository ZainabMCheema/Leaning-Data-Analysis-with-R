require(pacman)  # Gives a confirmation message.
library(pacman)  # No message.

pacman::p_load(pacman, dplyr, GGally, ggplot2, ggthemes, 
               ggvis, httr, lubridate, plotly, rio, rmarkdown, shiny, 
               stringr, tidyr) 
library(datasets)
head(mtcars)
cars <- mtcars[, c(1:4, 6:7, 9:11)]
head(cars)
