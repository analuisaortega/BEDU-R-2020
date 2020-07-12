library(dplyr)


df.traffic <- read.csv("../../Data/Metro_Interstate_Traffic_Volume.csv")

str(df.traffic)

mean.traffic <- mean(df.traffic$traffic_volume)

df.traffic.filter <- df.traffic %>% 
  select(weather_main, traffic_volume) %>% 
  rename(clima = weather_main) %>% 
  rename(trafico = traffic_volume) %>% 
  filter(trafico >= mean.traffic) 

dim(df.traffic.filter)

df.traffic.grouped <- df.traffic.filter %>% 
  group_by(clima) %>% 
  summarise(max.traffic = max(trafico),
            min.traffic = min(trafico)) 

df.traffic.grouped %>%
  mutate(diff.trafic = max.traffic - min.traffic)
