library(tidyverse)


install.packages("forcats")
library(forcats)
install.packages("patchwork")
library(patchwork)
?forcats
data()
View(gss_cat)
glimpse(gss_cat)

unique(gss_cat$race)

gss_cat %>% 
  pull(race) %>% 
  unique()

count(gss_cat, race, sort = T)

gss_cat %>% 
  count(race)

gss_cat %>% 
  pull(race) %>% 
  levels()
gss_cat %>% 
  select(race) %>% 
  table()
gss_cat %>% 
  mutate(race=fct_drop(race)) %>% 
  pull(race) %>% 
  levels()

gss_cat %>% 
  drop_na(tvhours) %>% 
  group_by(relig) %>% 
  summarise(mean_tv=mean(tvhours)) %>% 
  #View()
  ggplot(aes(mean_tv, relig))+
  geom_point(size= 3)

gss_cat %>% 
  drop_na(tvhours) %>% 
  group_by(relig) %>% 
  summarise(mean_tv= mean(tvhours)) %>% 
  mutate(relig= fct_reorder(relig, mean_tv)) %>% 
  ggplot(aes(mean_tv, relig))+
  geom_point(size= 3)

gss_cat %>% 
  drop_na(age) %>% 
  filter(rincome !="Not applicable") %>% 
  group_by(rincome) %>% 
  summarise(mean_age=mean(age)) %>% 
  ggplot(aes(mean_age, rincome))+
  geom_point(size= 3)


gss_cat %>% 
  drop_na(age) %>% 
  filter(rincome !="Not applicable") %>% 
  group_by(rincome) %>% 
  summarise(mean_age=mean(age)) %>% 
  mutate(rincome=fct_rev(rincome)) %>% 
  ggplot(aes(mean_age, rincome))+
  geom_point(size= 3)
# order the factors by the frequency of 
#the of value of that variable 

gss_cat %>% 
  count(marital)

gss_cat %>% 
  ggplot(aes(marital)) +
  geom_bar()

gss_cat %>% 
  mutate(marital= fct_infreq(marital)) %>% 
  mutate(marital= fct_rev(marital)) %>% 
  count(marital)
 
gss_cat %>% 
  mutate(marital=marital %>% fct_infreq() gss_cat) %>% 
  ggplot(aes(marital))+
  geom_bar(fill= "steelblue", alpha=0.5)+
  theme_bw()

gss_cat %>% 
  mutate(partyid= fct_recode(partyid,
                             "Republican, strong"= "Strong republican",
                             "Republican, weak" = "Not str republican",
                             "Independent, near rep"="Ind, near rep",
                             "Independent, near dem" =" Ind, near dem",
                             "Democrat, weak"= "Not str democrat",
                             "Democrat, strong"= "Strong democrat",
                             "Other"= "No answer",
                             "Other"="Don't know",
                             "Other"="Other Party ")) %>% 
 count(partyid)

#lumping into other
  
gss_cat %>% 
  count(relig, sort = T)
gss_cat %>% 
  mutate(reling= fct_lump(relig, n=2)) %>% 
  count(reling)

#reordering  the a factor y by its value corresponding
#the largest x value

gss_cat %>% 
  filter(!is.na(age)) %>% 
  filter( marital %in% c("Never married",
                         "Married",
                         "Widowed")) %>% 
  count(age, marital) %>% 
  group_by(age) %>% 
  mutate(prop= n/sum(n)) %>% 
  ggplot(aes(age, prop, colour=marital))+
  geom_line(size=2, na.rm=TRUE)+
  theme_minimal()
