library(tidyverse)
data()
names(mpg)


mpg %>% 
  ggplot(aes(x=displ,
             y=hwy,
             color=drv))+
  geom_point()+
  geom_smooth(method = lm,
              se=F)+
  labs(x="engine size",
       y="MPG on highway",
       titl="Fuel Efficieny")+
  theme_minimal()
