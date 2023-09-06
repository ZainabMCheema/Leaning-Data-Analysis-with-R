library(tidyverse)
data()
view(starwars)

#to view the variable types
glimpse(starwars)
class(starwars$gender)
unique(starwars$gender)
starwars$gender<- as.factor(starwars$gender)
class(starwars$gender)
levels(starwars$gender)
starwars$gender <- factor((starwars$gender), 
                          levels = c("masculine", "feminine"))
levels(starwars$gender)
names(starwars)
starwars %>%
  select(name, height, ends_with("color")) %>%
  names()
unique(starwars$hair_color)

starwars %>%
  select(name, height, ends_with("color")) %>%
  filter(hair_color %in% c("blond", "brown") 
         & height<180)
mean(starwars$height)
mean(starwars$height, na.rm= T)

starwars %>%
  select(name, height, gender, hair_color) 

starwars %>%
  select(name, height, gender, hair_color) %>%
  na.omit()

starwars %>%
  select(name, height, gender, hair_color) %>%
  filter(complete.cases(.))
    
starwars %>%
  select(name, height, gender, hair_color) %>%
  filter(!complete.cases(.))
           

starwars %>%
  select(name, height, gender, hair_color) %>%
  filter(!complete.cases(.)) %>%
  drop_na(height)

starwars %>%
  select(name, height, gender, hair_color) %>%
  drop_na(height)%>%
  View()
           
           
  