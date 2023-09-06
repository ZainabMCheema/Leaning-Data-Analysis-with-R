library(tidyverse)
data()
?BOD
BOD
ggplot(data= BOD,
       mapping = aes(x= Time,
                     y=demand))+
  geom_point(size=5)+
  geom_line(color= "red")

ggplot(BOD, aes(Time, demand))+
  geom_point()+
  geom_line()
data()
view(CO2)
names(CO2)

CO2 %>% 
  ggplot(aes(conc, uptake,
             color= Treatment))+
  geom_point(size= 3, alpha= 0.5)+
  geom_smooth(method = lm, se=F)+
  facet_wrap(~Type)+
  labs(title="Concentration of CO2")+
  theme_bw()

CO2 %>% 
  ggplot(aes(Treatment, uptake))+
  geom_boxplot()+
  geom_point( alpha= 0.5,
              aes(size=conc,
                  color= Plant))+
  facet_wrap(~Type)+
  coord_flip()+
  labs(title="NonChilled Vs Chilled")+
  theme_bw()

view(mpg)
names(mpg)
mpg %>% 
  ggplot(aes(displ,cty))+
  geom_point(aes(color=drv,
                 size=trans),
             alpha= 0.5)+
  geom_smooth(method = lm)+
  facet_wrap(~year, nrow=1)+
  labs(x= "Engine size",
       y= "MPG in city",
       title= "Fuel Efficieny ")


#just add filter in above code
mpg %>% 
  filter(cty< 25) %>% 
  ggplot(aes(displ,cty))+
  geom_point(aes(color=drv,
                 size=trans),
             alpha= 0.5)+
  geom_smooth(method = lm)+
  facet_wrap(~year, nrow=1)+
  labs(x= "Engine size",
       y= "MPG in city",
       title= "Fuel Efficieny ")
