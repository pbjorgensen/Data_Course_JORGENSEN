### 9/15/2026 ####
df = data.frame(
  fruit = c('apple', 'orange', 'banana', 'pear'),
  cal = c(1, 22, 33, 44)
)
df$calories_100 = df$cal + 100

for (x in 1:4) {
  print(df$fruit[x])
}

df$fruit[1]
df$fruit[2]

df$calories_1000 = df$cal + 1000
df

for (x in 1:4) {
  print(df$calories_100[x])
}

dim(df)
nrow(df)

paste('a','b')
paste0('a','b')

for (x in df$fruit) {
  out = paste(df$fruit[x], 'calories is', df$calories_100[x])
  print (out)
}

read.csv('Data/2114.txt')
write.csv(df, 'df.csv', row.names = F)

mtcars

#Rows = data for each car (observations)
#Columns = 11 columns of information for each car (variables)

df_cars = mtcars
ncol (df_cars)

str(df_cars)
dim(df_cars)
names(df_cars)

#All Variables in row 4
df_cars[1:11,4] 

View(df_cars)

#What is max, min, average of mpg?
max(df_cars$mpg)
min(df_cars$mpg)
avgmpg = mean(df_cars$mpg)
summary(df_cars$mpg)

### save cars with mpg > average to new obj
df_cars$mpg > 20

effic_car = df_cars[df_cars$mpg > avgmpg, ]
View(effic_car)

## 9/17 ####

## save cars with mpg > average and cyl equal to 4 to new obj
## Square brackets [_,_] define row and column (see below)

# Opt 1
effic_car2 = effic_car[effic_car$mpg == 4, ]
View()

# Opt 2 (! before == means not equal to that value)
effic_car3 = df_cars[df_cars$mpg > avgmpg & df_cars$cyl == 4,  ]
View(effic_car2)

#Remove columns
names(df_cars[,-1])
dim(df_cars[,-1])
dim(df_cars[,-c(1, 3, 5)])
dim(df_cars[,-c(1:5)])
dim(df_cars[,c()])

#Remove rows
dim(df_cars[-1,])
dim(df_cars[-c(1,3,5),])

#Add new columns
dataframe$new
?sort()

#Labels for columns
names(mtcars)

#Labels for each observation (row)
rownames(mtcars)

## remove 'hp', 'wt' and save car with mpg > 20
## and cyl not equal to 4
df_cars
simple_car = df_cars[,-c(4,6)]
View(simple_car)
simple_good_car = simple_car[simple_car$mpg > 20 & simple_car$cyl != 4,]
View(simple_good_car)

## install packages (can also do that under packages tab -> install)
install.packages()
install.packages('qrcode')
library(qrcode)
url = 'https://www.bioconductor.org/install/'
qr = qr_code(url)
qr
plot(qr)

package::function

## install tidyverse package
## load 'tidyverse' package in your environment
install.packages('tidyverse')
library(tidyverse)

df_cars %>%
  names()

mean(df_cars$mpg)

df_cars$mpg |> 
  mean() |> 
  View()

## save cars with mpg > 22, cyl = 4, wt < 3
## and hp > 90 in a new obj
## using tidyverse

#Preview your saved object with |> View()
simplest_car_info = df_cars |> 
  filter(mpg > 22, cyl == 4, wt < 3, hp > 90) |> 
  View()

#Actually save new object
simplest_car_info = df_cars |> 
  filter(mpg > 22, cyl == 4, wt < 3, hp > 90)

#View
simplest_car_info = df_cars |> 
  filter(mpg > 22, cyl == 4, wt < 3, hp > 90) |> 
  select(-mpg, -cyl)

simplest_car_info |> 
  pluck('mpg') |> 
  mean()

df_cars |> 
  filter(cyl != 4, ) |> 
  pluck('mpg') |> 
  mean()

## 9/22/2026 ####

library (tidyverse)

# Read in file and make a data frame
bird_data = read.csv('Data/cleaned_bird_data.csv')
View(bird_data)

#Calculate avg and call it a variable
avg_eggsize = mean(bird_data$Egg_mass, na.rm = T)
avg_eggsize

# Use tidyverse to filter egg mass values greater than avg
gtavg_eggsize = bird_data |> 
  dplyr::filter (Egg_mass > avg_eggsize)

# Use default R way to create variable including values greater than avg
gtavg2_eggsize = bird_data[bird_data$Egg_mass > avg_eggsize & !is.na(bird_data$Egg_mass), ]

# write new larger egg size data frame to a csv
write.csv(gtavg_eggsize, "Data/EggMass>Avg.csv", row.names = F)

View(gtavg_eggsize)

View(gtavg2_eggsize)

#OR

bird_data |> 
  filter(Egg_mass > avg_eggsize) |> 
  group_by(Gender) |> 
  summarise(min_egg = min(Egg_mass),
            max_egg = )

## 9/24/2026 ####
install.packages("palmerpenguins")
library (palmerpenguins)
library(tidyverse)
penguins
View(penguins)

avg_bill_length = mean(penguins$bill_length_mm, na.rm = T)

# OR

mean_length_species = penguins |> 
  group_by(species, island) |> 
  summarise(mean_length_species = mean(bill_length_mm, na.rm = T),
            max_length_species = max(bill_length_mm, na.rm = T),) |> 
  arrange(mean_length_species) |> 
  relocate(species, .after = island) |> 
  View()

df = data.frame(
  id = 1:3,
  score = c(50, 85, NA)
)

df

df |> 
  filter(score > 50)

vec = c(1, 2, NA)
is.na(vec)
!is.na(vec)

filter(is.na(vec))

penguins |> 
  filter(!is.na(sex)) |> 
  View()

penguins |> 
  filter(!is.na)

mean_length_species = penguins |> 
  group_by(species, island) |> 
  summarise(mean_length_species = mean(bill_length_mm, na.rm = T),
            max_length_species = max(bill_length_mm, na.rm = T),) |> 
  arrange(match(species, c('Chinstrap', 'Gentoo', 'Adelie'))) |> 
  select(island, species, mean_length_species, max_length_species) |> 
  mutate(new_col = max_length_species + mean_length_species, .before = species) |> 
  select(-new_col) |> 
  mutate(new_col = case_when(max_length_species > 50 ~ 'big chungus',
                             TRUE ~ 'little chungus')) |> 
  View()

case_when( condition ~ if T, then)
# Arrange changes row order, relocate changes column order

# Make a new column in tidyverse = mutate()

# 09/29/2026 ####
library(tidyverse)

mean_bill_length = mean(penguins$bill_length_mm, na.rm = T,)

penguins |> 
  filter(body_mass_g > 5000, bill_length_mm > mean_bill_length) |> 
  group_by(sex, island) |> 
  summarise(max_wt = max(body_mass_g),
            max_bil = max(bill_length_mm),
            count = n())

# inside summarise each new line is a new column

penguins |> 
  drop_na() |> 
  mutate(Criteria = case_when(body_mass_g > 5000 & bill_length_mm > mean_bill_length ~ 'Big',
                              body_mass_g <= 5000 & bill_length_mm <= mean_bill_length ~ 'Smol',
                              TRUE ~ 'Unsure')) |> 
  View()

library(ggplot2)

?ggplot()

penguins |> 
  drop_na() |> 
ggplot(aes(x = body_mass_g, 
           y = bill_length_mm,
           color = sex)) +
  geom_point() +
  geom_smooth(method = 'lm') + # can specify what function to use
  labs(x = 'Body Mass (g)',
       y = 'Bill Length (mm)')

# 10/01/2026


View(penguins)
library(tidyverse)
library(ggplot2)
library(palmerpenguins)

plot = penguins |> 
  drop_na() |> 
ggplot(aes(x = body_mass_g,
           fill = species)) +
  geom_density(alpha = 0.4, linetype = "dashed") +
  labs(x = 'Body Mass (g)',
       y = 'Density',
       title = 'Penguin Body Mass Distribution by Species')

str(plot)


penguins |> 
  group_by(species, body_mass_g) |> 
  summarise(avg_mass_species = mean(body_mass_g)) |> 
ggplot(aes(x = species,
           y = avg_mass_species,
           fill = species)) +
  geom_col(stat = 'identity', alpha = 0.7) +
  labs(x = 'Species',
       y = 'Body Mass (g)',
       title = 'Avg Body Mass by Penguin Species')
  
penguins |> 
  ggplot(aes(x = body_mass_g,
             y = bill_depth_mm,
             color = species)) +
  geom_point(alpha = 0.5) +
  scale_color_manual(values = c('Adelie' = 'purple', 
                                'Chinstrap' = 'orange', 
                                'Gentoo' = 'red'))

penguins |> 
  ggplot(aes(x = body_mass_g,
             y = bill_depth_mm,
             color = species)) +
  geom_point() +
  scale_color_viridis_d() +
  facet_wrap(sex)
  