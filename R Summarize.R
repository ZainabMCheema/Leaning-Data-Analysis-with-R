library(tidyverse)
data()
view(msleep)

min(msleep$awake)
max(msleep$awake)
mean(msleep$awake)
median(msleep$awake)
var(msleep$awake)
range(msleep$awake)
IQR(msleep$awake)

summary(msleep)
summary(msleep$sleep_total)

msleep %>% 
  select(sleep_total, brainwt) %>% 
  summary


msleep %>% 
  drop_na(vore) %>% 
  group_by(vore) %>% 
  summarise(Lower= min(sleep_total),
            Average=mean(sleep_total),
            Upper=max(sleep_total),
            Difference= max(sleep_total)- min(sleep_total)) %>% 
  arrange(Average) %>% 
  View()

library(MASS)
attach(Cars93)

glimpse(Cars93)

table(Origin )

table(AirBags,Origin)

addmargins(table(AirBags,Origin), 1)
addmargins(table(AirBags,Origin), 2)
addmargins(table(AirBags,Origin))

prop.table(table(AirBags,Origin))*100
prop.table(table(AirBags,Origin), 1)*100

round(prop.table(table(AirBags,Origin))*100)
