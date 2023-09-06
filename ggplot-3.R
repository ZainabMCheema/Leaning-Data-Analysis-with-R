install.packages("car")
library(car)
library(tidyverse)

theme_set(theme_bw())
head(Salaries)

Salaries %>% 
  ggplot(aes(x=yrs.since.phd,
             y=salary))+
  geom_jitter(aes(color=rank, shape= discipline))+
  geom_smooth(method = lm)+
  facet_wrap(~sex)+
  labs(title="salaries scine phd vs year",
       x="year since phd",
       y="income",
       color= "Position",
       shape="Research_area")


Salaries %>% 
  filter(salary< 150000) %>% 
  ggplot(aes(x=yrs.since.phd,
             y=salary,
             fill=sex))+
  geom_boxplot(alpha= 0.5)+
  scale_x_discrete(breaks=c("AsstProf",  "AssocProf", 
                            "Prof"),
                   labels=c("Assistat\nProfessor", 
                          "Associate\nProfessor",
                          "Full\nProfessor"))+
  scale_y_continuous(breaks = c(50000, 100000, 
                                150000, 200000),
                     labels = c("$50K", "$100K",
                                "$150K","$200K"))+
  labs(title="salaries scine phd vs year",
       x="",
       y="",
       fill= "Gender")+
  theme(legend.position = c(.11,.78),
        axis.text.x = element_text(angle = 45, hjust = 1))




