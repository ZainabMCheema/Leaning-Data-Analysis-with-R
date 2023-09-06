library(tidyverse)
?msleep
glimpse(msleep)
view(msleep)
  
 
renamed_data <- msleep %>%
  rename(Conserv = conservation)
glimpse(renamed_data)

msleep %>% 
  select(vore, name, everything())

msleep$vore <- (msleep$vore)
msleep$vore <- as.factor(msleep$vore)
glimpse(msleep)
 
names(msleep)

msleep %>% 
  select(2:4,
         awake, 
         starts_with("sleep"),
         contains("wt")) %>% 
  names()
unique(msleep$order)
msleep %>% 
  filter((order=="Carnivora" | 
          order=="Primates") &
           sleep_total>8) %>% 
  select(name, order, sleep_total) %>% 
  arrange(- sleep_total) %>% 
  view

msleep %>% 
  filter(order %in%  c("Carnivora", "Primates") &
           sleep_total>8) %>% 
  select(name, order, sleep_total) %>% 
  arrange(order) %>% 
  view

msleep %>% 
  mutate(brainwt=brainwt*1000) %>% 
  view

msleep$brainwt
msleep$brainwt > 0.01

size_of_brain <- msleep %>%  
  select(name, brainwt) %>% 
  drop_na(brainwt) %>% 
  mutate(brain_size= if_else(brainwt>0.01, "large", "small"))

size_of_brain 

size_of_brain %>% 
  mutate(brain_size= recode(brain_size,
                            "large"= 1,
                            "small"=2))

install.packages("gapminder")
library(gapminder)
view(gapminder)

data<- select(gapminder, country, year, lifeExp)
data
wide_data <- data %>% 
  pivot_wider(names_from =  year, values_from = lifeExp)
view(wide_data)
  
wide_long <- wide_data %>% 
  pivot_longer(2:13,
               names_to = "year",
               values_to= "lifeExp")
view(wide_long)
