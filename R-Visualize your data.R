library(tidyverse)
install.packages("gapminder")
library(gapminder)
View(gapminder)
data("gapminder")
install.packages("ggridges")
library(ggridges)
library(patchwork)
install.packages("viridis")
install.packages("viridisLite")
library(viridis)
library(hrbrthemes)
install.packages("hrbrthemes")
library(gapminder)
theme_set(theme_bw())

gapminder %>% 
  filter(continent %in% c("Africa", "Europe")) %>% 
  filter(gdpPercap <30000) %>% 
  ggplot(aes(x=gdpPercap,
             y=lifeExp,
             size=pop,
             color=year))+
  geom_point()+
  facet_wrap(~continent) +
  labs(title = "Life expectancy explaind by GDP",
         x= "GDP per capita",
         y= "life expectancy")

starwars %>%
  select(name, height, mass, gender, hair_color) %>%
  head()
class(starwars$height)
sum(is.na(starwars$height))

library(ggplot2)
library(dplyr)
height_no_na <- na.omit(starwars$height)

# Create a density plot using the cleaned 'height' data
p2 <- ggplot(data = data.frame(height = height_no_na), aes(x = height)) +
  geom_density(aes(fill = "blue"),
               show.legend = FALSE,
               alpha = 0.5) +
  labs(title = "Density plot",
       x = "Height",
       y = "Probability") +
  theme_minimal()









p2 <- starwars %>%
  ggplot(aes(x = height)) +
  geom_density(aes(fill = "blue"),
               show.legend = F,
               alpha = .5) +
  labs(title = "Density plot",
       x = "Height",
       y = "Probability")




  
