## restart R
## read 'cleaned_bird_data.csv' using relative path
## calculate average of egg size
## save birds (entire data frame) with egg sizes 
## greater than average to new obj.
## save to csv and open it on laptop

library(tidyverse)



mtcars[mtcars$mpg > 20 ,]

View(df_bird)

df_bird = read.csv('Data/cleaned_bird_data.csv') #tab
str(df_bird)
dim(df_bird)


# calculate avg
avg = mean(df_bird$Egg_mass, na.rm = TRUE)

df_bird$Egg_mass %>% 
  mean(, na.rm = TRUE)


## save birds (entire data frame) with egg sizes 
## greater than average to new obj.

dim(df_bird[df_bird$Egg_mass > avg,])


new_1 = df_bird[df_bird$Egg_mass > avg,]
new_1 = 1

new_2 = df_bird %>% 
  filter(Egg_mass > avg)
dim(new_dat)

write.csv(new_2, 'new_2.csv', row.names = F)



df_bird %>% 
  filter(Egg_mass > avg) %>% 
  write.csv('new_new_2.csv')



getwd()


## 

min(new_2$Egg_mass)
max(new_2$Egg_mass)
mean(new_2$Egg_mass)


df_bird %>% 
  filter(Egg_mass > avg) %>% 
  pluck('Egg_mass') %>% 
  max()



df_bird %>% 
  filter(Egg_mass > avg) %>% 
  group_by(Mating_System) %>% 
  summarise(min_egg = min(Egg_mass),
            max_egg = max(Egg_mass),
            avg_egg = mean(Egg_mass),
            N = n())











