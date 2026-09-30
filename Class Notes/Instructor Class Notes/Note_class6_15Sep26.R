# 1. create a data frame contains your favorite fruits 
#  (at least 3) and their calories 
# 3. After creating the df, add a new col called 'calaries_100'
#    the value = original cal + 100
# 4. write a loop to print out 'calaries_100'
# 5. save the data frame to local

df_fruit = data.frame(
  fruit = c('apple', 'orange', 'banana', 'pear'),
  cal = c(1, 22, 33, 44)
)

df_fruit$fruit
df_fruit$calaries_100 = 1
df_fruit$calaries_100 = df_fruit$cal + 100
df_fruit

for (i in 1:nrow(df_fruit)) {
  
  print(i)
}

paste('a', 'b')
paste0('a', 'b')
paste0('Data/', i)

paste(df_fruit$fruit[1], 'calories is', df_fruit$calaries_100[1])
paste(df_fruit$fruit[2], 'calories is', df_fruit$calaries_100[2])
df_fruit$calaries_100[3]
df_fruit$calaries_100[4]


for (i in 1:nrow(df_fruit)) {
  print(paste(df_fruit$fruit[i], 'calories is', df_fruit$calaries_100[i]))
}

read.csv('Data/2114.txt')
write.csv(df_fruit, 'df_fruit.txt', row.names = F)
read.csv('df_fruit.csv')
write.table()

mtcars
data(mtcars)

mtcars[1:3, 1:3]
df_car = mtcars
df_car = df_car[1:3, 1:3]

## 1. save mtcars to a new obj
## 2. examine the obj. (ex: rows, cols, col names...)

df_car = mtcars
str(df_car)
dim(df_car)
names(df_car)


df_car[2,3]
df_car[1:3,3]
1:3

new_obj = df_car[c(1,2,5), 1:3]

## what's max, min, averge of mpg?
max()
min()
mean()

my_mpg = df_car$mpg

max(df_car$mpg)
mean(df_car$mpg)

## save cars with mpg > average to new obj
df_car$mpg > 20
df_car[df_car$mpg > 20, ]
good_car = df_car[df_car$mpg > 20, 1:3]


## save cars with mpg > average and cyl equal to 4 to new obj




