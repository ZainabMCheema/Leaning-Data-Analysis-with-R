library(tidyverse)
library(ggplot2)
library(dplyr)
library(ggridges)
library(patchwork)
library(viridis)
library(hrbrthemes)
data()
starwars %>%
  select(name, height, mass, gender, hair_color) %>%
  head()

p1 <- starwars %>%
  ggplot(aes(x = height)) +
  geom_histogram(binwidth = 20,
                 show.legend = F,
                 alpha = .5) +
  labs(title = "Histogram",
       x = "Height",
       y = "Count")

print(p1)
p2<-starwars %>% 
  ggplot(aes(x= height))+
  geom_density(aes(fill="blue"),
               show.legend = F,
               alpha=0.5)+
  labs(title = "density chart",
       x="height",
       y="probability")
print(p2)

p3<- starwars %>% 
  ggplot(aes(x=height))+
  geom_boxplot(show.legend = F,
               alpha=0.5)+
  labs(title = "boxplot chart",
       x="height")
print(p3)

p3a <- starwars %>%
  ggplot(aes(x = height, y = 1)) +
  geom_violin(aes(fill = "blue"),
              show.legend = F,
              alpha = .5)+
  labs(title = "Violin plot",
       x = "Height")
print(p3a)
(p1 /p2 | p3 / p3a) +
  plot_annotation(title = "Single numeric variable",
                  theme = theme(plot.title = element_text(size = 18,
                                                          colour = "blue"))) +
  theme(text = element_text('mono'))


p4 <- starwars %>%
  drop_na(eye_color) %>%
  filter(eye_color %in% c("black", 
                          "brown", 
                          "blue", 
                          "yellow")) %>%
  ggplot(aes(x = eye_color)) +
  geom_bar(stat = "count", 
           alpha = 0.5) +
  labs(title = "Barplot",
       x = "Eye colour",
       y = "Count")
print (p4)



p5 <- starwars %>%
  drop_na(eye_color, gender) %>%
  filter(eye_color %in% c("black", 
                          "brown", 
                          "blue", 
                          "yellow")) %>%
  ggplot(aes(eye_color, fill = gender)) +
  geom_bar(stat = "count", 
           alpha = .5,
           show.legend = F) +
  labs(title = "Stacked barplot",
       x = "Eye colour",
       y = "Count")

print (p5)
p5a <- starwars %>%
  drop_na(eye_color, gender) %>%
  filter(eye_color %in% c("black", 
                          "brown", 
                          "blue", 
                          "yellow")) %>%
  ggplot(aes(eye_color, fill = gender)) +
  geom_bar(stat = "count", 
           alpha = .5,
           position="dodge",
           show.legend = F)+
  labs(title = "Grouped barplot",
       x = "Eye colour",
       y = "Count")
print(p5a)

p5b <- starwars %>%
  drop_na(eye_color, gender) %>%
  filter(eye_color %in% c("black", 
                          "brown", 
                          "blue", 
                          "yellow")) %>%
  ggplot(aes(eye_color, fill = gender)) +
  geom_bar(stat = "count", 
           alpha = .5,
           position="fill",
           show.legend = T) +
  labs(title = "Percentage barplot",
       x = "Eye colour",
       y = "Count") +
  theme(legend.position = "bottom")
((p4 | p5)/( p5a | p5b)) +
  plot_annotation(title = "One or more categorical variable",
                  theme = theme(plot.title = element_text(size = 18,
                                                          colour = "blue"))) +
  theme(text = element_text('mono'))
glimpse(chickwts)
head(chickwts)
chickwts %>%
  group_by(feed) %>%
  mutate(mean_by_feed = mean(weight)) %>%
  ungroup() %>%
  mutate(feed = fct_reorder(feed, mean_by_feed)) %>%
  ggplot(aes(feed, weight, colour = feed,
             show.legend = F)) +
  coord_flip() +
  geom_jitter(show.legend = F,
              size = 4,
              alpha = 0.2,
              width = 0.05) +
  stat_summary(fun = mean, geom = "point", size = 8, show.legend = F) +
  geom_hline(aes(yintercept = mean(weight)),
             colour = "gray70",
             size = 0.9) +
  geom_segment(aes(x = feed, xend = feed,
                   y = mean(weight), yend = mean_by_feed),
               size = 2, show.legend = F) +
  labs(title = "Weight of chickens by feed group",
       x = "Feed",
       y = "Weight of chickens") +
  theme(legend.position = "none") +
  theme_bw()

ggplot(lincoln_weather, aes(x = `Mean Temperature [F]`, 
                            y = `Month`, fill = ..x..)) +
  geom_density_ridges_gradient(scale = 3, 
                               rel_min_height = 0.01,
                               alpha = 5) +
  scale_fill_viridis(name = "Temp. [F]", option = "C") +
  labs(title = 'Temperatures in Lincoln NE in 2016') +
  theme_bw() +
  theme(
    legend.position="none",
    panel.spacing = unit(0.1, "lines"),
    strip.text.x = element_text(size = 8)
  )
