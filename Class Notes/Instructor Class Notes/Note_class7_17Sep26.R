## save cars with mpg > average and 
## cyl equal to 4 to new obj

mtcars
df_car = mtcars

mean(df_car$mpg)

## opt 1
df_mpg_20 = df_car[df_car$mpg > 20, ]
View(df_mpg_20)

df_new = df_mpg_20[df_mpg_20 == 4, ]
View(df_new)


## opt2 
df_car = mtcars

df_mpg_20 = df_car[df_car$mpg > 20 & df_car$cyl == 4, ] # and 
View(df_mpg_20)

# ! = not
df_mpg_20 = df_car[df_car$mpg > 20 & df_car$cyl != 4, ] # and 
View(df_mpg_20)


df_car = mtcars
dim(df_car)

names(df_car[,-1])
dim(df_car[,-1])
dim(df_car[,c(1, 3, 5)])
dim(df_car[,c(1:5)])
dim(df_car[-1,])


vec = 1, 2, 3

dataframe$new
sort 
?sort()

name(car) = c('1st', '2nd', 's')

names(mtcars)


## remove 'hp', 'wt' and save car with mpg > 20
## and cyl not 4


names(df_car[, -c(4,6)])
?names()

df_new = df_car[, -c(4,6)]
df_new_2 = df_new[df_new$mpg > 20 & df_new$cyl != 4, ]
View(df_new_2)

dim()

## 

## install package
install.packages()
install.packages('qrcode')
library(qrcode)
url <- 'https://www.bioconductor.org/install/'
qr <- qr_code(url)
qr 
plot(qr)

package::function 
## 1. install 'tidyverse' package
## 2. load 'tidyverse' package in your environment
library(tidyverse)

filter()
stats::filter()

df_car = mtcars
names(df_car)

#%>% |  shift + command + M

df_car %>% 
  names()

mean(df_car$mpg)

df_car$mpg %>% 
  mean() %>% 
  View()


df_new_2 = df_new[df_new$mpg > 20 & df_new$cyl != 4, ]


## save cars with mpg > 22, cyl = 4, wt < 3
## and hp > 90 in a new obj 
## use tidyverse 

new_obj = df_car %>% 
  filter(mpg > 22, cyl == 4, wt < 3, hp > 90) %>% 
  select(-mpg, -cyl)

new_obj

new_obj %>% 
  pluck('mpg') %>% 
  mean()

new_obj %>% 
  select('mpg') %>% 
  mean()

## remove cars with cyl = 4
## and calculate average mpg


df_car %>% 
  filter(cyl != 4) %>% 
  pluck('mpg') %>% 
  mean()










